import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}
class Tour {
  final String imagePath;
  final String title;
  final double price;

  Tour({required this.imagePath, required this.title, required this.price});
}

List<Tour> tours = [
  Tour(
    imagePath: "lib/images/tour1.jpg",
    title: "Tour 1",
    price: 29.0,
  ),
  Tour(
    imagePath: "lib/images/tour2.jpg",
    title: "Tour 2",
    price: 49.0,
  ),
  Tour(
    imagePath: "lib/images/tour3.jpg",
    title: "Tour 3",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour4.jpg",
    title: "Tour 4",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour5.jpg",
    title: "Tour 5",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour6.jpg",
    title: "Tour 6",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour7.jpg",
    title: "Tour 7",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour8.jpg",
    title: "Tour 8",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour9.jpg",
    title: "Tour 9",
    price: 39.0,
  ),
  Tour(
    imagePath: "lib/images/tour10.jpg",
    title: "Tour 10",
    price: 39.0,
  ),
];

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Futura Hv BT',
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 3.1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final tour = tours[index % tours.length];
                    return Card(
                      margin: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              tour.imagePath,
                              fit: BoxFit.cover,
                              height: 174.0,
                              width: 150.0,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.0),
                                Text(
                                  tour.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "From \$${tour.price.toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                SizedBox(height: 8.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
