import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_page.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Page view
          PageView(
            controller: _controller,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 80.0, right: 80.0, bottom: 100.0, top: 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/airplane.png'),
                      SizedBox(height: 20.0),
                      Text(
                        'Welcome to My Travel Blog',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Futura Hv BT',
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Explore the world with me and discover new adventures.',
                        style: TextStyle(color :Colors.grey[350], fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 80.0, right: 80.0, bottom: 100.0, top: 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/travel-map.png'),
                      SizedBox(height: 20.0),
                      Text(
                        'Welcome to My Travel Blog',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Futura Hv BT',
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Explore the world with me and discover new adventures.',
                        style: TextStyle(color :Colors.grey[350], fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 80.0, right: 80.0, bottom: 100.0, top: 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('lib/images/passenger.png'),
                      SizedBox(height: 20.0),
                      Text(
                        'Welcome to My Travel Blog',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Futura Hv BT',
                        ),                   ),
                      SizedBox(height: 20.0),
                      Text(
                        'Explore the world with me and discover new adventures.',
                        style: TextStyle(color :Colors.grey[350], fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),              ),
            ],
          ),
          // dot indicators
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Login'),
            ),
          ),
          Container(
              alignment: Alignment(0,0.75),
              child: SmoothPageIndicator(controller: _controller, count: 3))
        ],
      ),
    );
  }
}
