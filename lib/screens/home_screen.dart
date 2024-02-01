import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview_project/screens/widgets/circle_button.dart';
import 'package:interview_project/screens/widgets/shoe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
          color: Colors.black,
          activeColor: Color.fromARGB(255, 182, 9, 9),
          gap: 4,
          tabs: [
            GButton(
              onPressed: null,
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              onPressed: null,
              icon: Icons.favorite,
              text: 'Favourite',
            ),
            GButton(
              onPressed: null,
              icon: Icons.bakery_dining_rounded,
              text: 'offer',
            ),
            GButton(
              onPressed: null,
              icon: Icons.person,
              text: 'profile',
            ),
          ]),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
              'https://media.designrush.com/inspiration_images/134805/conversions/_1512076803_93_Nike-mobile.jpg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    width: 0.4,
                  )),
              child: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
                iconSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    width: 0.4,
                  )),
              child: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                iconSize: 22,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextField(
              style: const TextStyle(fontSize: 15.0),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 234, 234, 234),
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Search Product",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    color: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0)),
              )),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleButton(),
              CircleButton(),
              CircleButton(),
              CircleButton(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Shop by collection',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 20,
              children: const [
                ShoeCard(),
                ShoeCard(),
                ShoeCard(),
                ShoeCard(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
