import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color:Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Futura Hv BT',
                  ),
                ),
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
                            labelText: 'Enter your name',
                            fillColor: Colors.indigo,
                            prefixIcon: Icon(Icons.person, color: Colors.grey[400]),
                            hintStyle: TextStyle(color: Colors.indigo),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            fillColor: Colors.indigo,
                            prefixIcon: Icon(Icons.mail, color: Colors.grey[400]),
                            hintStyle: TextStyle(color: Colors.indigo),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            fillColor: Colors.indigo,
                            prefixIcon: Icon(Icons.lock, color: Colors.grey[400]),
                            hintStyle: TextStyle(color: Colors.grey[400]),
                          ),
                        ),
                        SizedBox(height: 20.0),

                        ElevatedButton(
                          style:ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: const Text('Sign Up'),
                        ),

                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 50.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?"),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                },
                                child: const Text("Sign In", style: TextStyle(color: Colors.indigo)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
