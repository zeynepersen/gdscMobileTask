import 'package:flutter/material.dart';
import 'package:mobile_task/pages/main_page.dart';
import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Futura Hv BT',
                  ),                ),
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          fillColor: Colors.indigo,
                          prefixIcon: Icon(Icons.person, color: Colors.grey[400]),
                          hintStyle: TextStyle(color: Colors.indigo),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Colors.indigo,
                          prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Flexible(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => MainPage()));
                          },
                          child: const Text('Login', style: TextStyle(backgroundColor: Colors.indigo)),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Here for the first time? "),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => SignUpPage()));
                                },
                                child:
                                const Text("Sign Up", style: TextStyle(color: Colors.indigo)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}