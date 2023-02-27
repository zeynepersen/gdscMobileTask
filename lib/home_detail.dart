import 'package:flutter/material.dart';
import 'package:mobile_task/pages/main_page.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Positioned(
                left: 20,
                top: 70,
                child: Row(children: [
                  IconButton(onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MainPage()));
                  }, icon:Icon(Icons.menu))
            ],)),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Climbing Mont Blanc',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Futura Hv BT',
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star, color: Colors.yellow,),
                      Icon(Icons.star_half, color: Colors.yellow,),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Distance',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '32 km',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.directions_walk,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elevation',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '2371m',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.account_balance_outlined,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Time',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '24 h',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'This is a big paragraph box. Lorem ipsum dolor sit amet, consectetur adipisci rhoncus lorem commodo id. Vestibulum sagittis risus in elit vehicula egestas. Donec consectetur aliquam quam, eget rhoncus nisi efficitur et. Vivamus iaculis tincidunt purus. Duis sit amet enim in risus bibendum aliquam at eu sapien.',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
                onPressed: () {},
                child: Text('BOOK FROM \$845.00'),
              ),
            ),
            Wrap(
              runSpacing: 10.0, // Set spacing between rows
              children: [
                Row(
                  children: [
                    SizedBox(width: 3.0), // Add spacing between containers
                    Container(
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('lib/images/ricardo-gomez-angel-58uZCE8zrdk-unsplash.jpg', fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 7.0), // Add spacing between containers
                    Container(
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('lib/images/rohit-tandon-9wg5jCEPBsw-unsplash.jpg', fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 7.0), // Add spacing between containers
                    Container(
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('lib/images/tamara-malaniy-pOZCU9IjzKA-unsplash.jpg', fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
