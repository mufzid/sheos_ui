import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  width: 0.4,
                )),
            child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.settings_outlined,
                color: Color.fromARGB(255, 79, 79, 79),
              ),
              iconSize: 35,
            ),
          ),
          Text('Men')
        ],
      ),
    );
  }
}
