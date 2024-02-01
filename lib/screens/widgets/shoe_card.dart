import 'package:flutter/material.dart';
import 'package:interview_project/screens/shoe_screen.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ShoesScreen()),
            );
          },
          child: Card(
            elevation: 2,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZwyPIRdoZh5LcVZsqVBQ9PQ_70GqaHcTmhw&usqp=CAU'),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Shop by collection',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
