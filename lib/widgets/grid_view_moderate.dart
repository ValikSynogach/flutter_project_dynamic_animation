// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

import 'base_container.dart';

class GridViewModerate extends StatelessWidget {
  List data = [
    {
      "text": "Just",
      "image": "assets/picture1.webp",
    },
    {
      "text": "Enjoy",
      "image": "assets/picture2.png",
    },
    {
      "text": "Life",
      "image": "assets/picture3.png",
    },
    {
      "text": "Ok",
      "image": "assets/picture4.jpg",
    },
    {
      "text": "It's",
      "image": "assets/picture5.jpg",
    },
    {
      "text": "My",
      "image": "assets/picture6.jpg",
    },
    {
      "text": "Project",
      "image": "assets/picture7.jpg",
    },
  ];

  final colorwhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BaseContainer(
                    title: data[index]["text"],
                    backgroundimage: data[index]["image"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    data[index]["image"],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                child: Text(
                  data[index]["text"],
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
