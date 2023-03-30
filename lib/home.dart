import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 249, 252),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonBadges(icon: Icons.settings, onPressed: () {print("hi");}),
          buttonBadges(icon: Icons.notifications, onPressed: () {}),
          buttonBadges(icon: Icons.mail, onPressed: () {}),
          buttonBadges(icon: Icons.person, onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 450,
            child: Stack(
              children: [
                SizedBox(
                  width: width,
                  height: 300,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      child: Image.asset(
                        'assets/greece.jpg',
                        width: width,
                        //height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left:40,
                  right: 40,
                  child: Center(
                    heightFactor: 2.7,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 6, color: Colors.white),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/image.jpg'),
                        radius: 90,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),

          Container(
            margin: const EdgeInsets.all(10),
            //            child: const Align(
            // alignment: Alignment(0.50, 0.50),
            child: const Text(
              'Discover Greece',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //),
          const SizedBox(
            child: Text(
              'Greece has been a major tourist destination and attraction in Europe since the 1970s for its rich culture and history, which is reflected in large part by its 18 UNESCO World Heritage Sites, among the most in Europe and the world as well as for its long coastline, many islands, and beaches.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonBadges(
      {required IconData icon, required VoidCallback onPressed}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: onPressed,
        child: badges.Badge(
          badgeContent: const Text('1'),
          child: Icon(
            icon,
            size: 50,
            color: const Color.fromARGB(255, 99, 237, 247),
          ),
        ),
      ),
    );
  }
}
