// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutterlll/pages/drawer_screen.dart';
import 'package:flutterlll/pages/home_screen.dart';
import 'package:flutterlll/pages/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'last Project',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  Myhomepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  List<Widget> homescreens = [
    HomeScreen(),
    SecondScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(
            onHomeIconTap: () => setState(
              () => index = 1,
            ),
            onSecondIconTap: () => setState(
              () => index = 0,
            ),
          ),
          homescreens[index],
        ],
      ),
    );
  }
}
