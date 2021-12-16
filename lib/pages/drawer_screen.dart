// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, prefer_typing_uninitialized_variables, avoid_print, unused_local_variable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutterlll/pages/home_screen.dart';
import 'package:flutterlll/pages/second_screen.dart';
import 'package:flutterlll/main.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    required this.onHomeIconTap,
    required this.onSecondIconTap,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onHomeIconTap;
  final VoidCallback? onSecondIconTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
                left: 20,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/profile2.jpg',
                      ),
                      radius: 40,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Valik Synogach',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View Profile',
                        style: TextStyle(
                          color: Colors.white30,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 23,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  'Home page',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: onSecondIconTap,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 23,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.security,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text(
                  'Second Page',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: onHomeIconTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
