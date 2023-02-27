import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class Tour {
  final String title;
  final String imagePath;

  Tour(this.title, this.imagePath);
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<Tour> tours = [
    Tour('Tour 1', 'lib/images/tamara-malaniy-pOZCU9IjzKA-unsplash.jpg'),
    Tour('Tour 2', 'lib/images/rohit-tandon-9wg5jCEPBsw-unsplash.jpg'),
    Tour('Tour 3', 'lib/images/ricardo-gomez-angel-58uZCE8zrdk-unsplash.jpg'),
    Tour('Tour 4', 'lib/images/oliver-sjostrom-ITRnilDKqGs-unsplash.jpg'),
    Tour('Tour 5', 'lib/images/oliver-sjostrom-gofDws5Y_CU-unsplash.jpg'),
    Tour('Tour 6', 'lib/images/konstantin-kleine-V1NVvXmO_dk-unsplash.jpg'),
    Tour('Tour 7', 'lib/images/kalen-emsley-Bkci_8qcdvQ-unsplash.jpg'),
    Tour('Tour 8', 'lib/images/jonathan-forage-1azAjl8FTnU-unsplash.jpg'),
    Tour('Tour 9', 'lib/images/ivana-cajina-e6f8IaRQY7M-unsplash.jpg'),
    Tour('Tour 10', 'lib/images/christopher-burns--jbsw_GUK74-unsplash.jpg'),
  ];

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
                "Favorites",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Futura Hv BT',
                ),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: SingleChildScrollView(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: tours.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 0.75, // adjust the aspect ratio to your liking
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final tour = tours[index];
                      return Card(
                        margin: EdgeInsets.all(8.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                tour.imagePath,
                                fit: BoxFit.cover,
                                height: 180.0,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0),
                              child: Text(
                                tour.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
