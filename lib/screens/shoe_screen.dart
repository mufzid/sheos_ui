import 'package:flutter/material.dart';
import 'package:interview_project/screens/widgets/circle_button.dart';
import 'package:interview_project/screens/widgets/shoe_card.dart';

class ShoesScreen extends StatelessWidget {
  const ShoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  Icons.search,
                  color: Colors.black,
                ),
                iconSize: 22,
              ),
            ),
          ),
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
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                iconSize: 22,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mens Running(58)",
                    style: TextStyle(fontSize: 20),
                  ),
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
                          Icons.filter_list,
                          color: Colors.black,
                        ),
                        iconSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SheoBox(),
                  SheoBox(),
                  SheoBox(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SheoBox extends StatelessWidget {
  const SheoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.3),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTABh8tnG42Qsoteepq9qsmUz4ARJhyihJpMw&usqp=CAU'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Nike react miler',
                    style: TextStyle(fontSize: 20),
                  ),
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
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                        ),
                        iconSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'Mens road running shoes',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Text(
                'MRP : Rs.11000',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
