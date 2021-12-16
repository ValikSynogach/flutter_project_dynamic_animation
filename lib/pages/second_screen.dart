// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:flutterlll/widgets/base_container.dart';
import 'package:flutterlll/widgets/grid_view_easy.dart';
import 'package:flutterlll/widgets/grid_view_moderate.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with TickerProviderStateMixin {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(
          scaleFactor,
        ),
      duration: Duration(
        milliseconds: 250,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          isDrawerOpen ? 40 : 0.0,
        ),
        color: Colors.white,
      ),
      child: DefaultTabController(
        length: 4,
        child: Container(
          padding: const EdgeInsets.only(
            left: 5,
            top: 30,
            right: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 270;
                              yOffset = 90;
                              scaleFactor = 0.75;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  '2 Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 13,
                ),
                tabs: [
                  Tab(
                    text: 'Easy',
                  ),
                  Tab(
                    text: 'Much',
                  ),
                  Tab(
                    text: 'Just',
                  ),
                  Tab(
                    text: 'Old',
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  child: TabBarView(
                    children: [
                      GridViewEasy(),
                      GridViewModerate(),
                      Center(
                        child: Text(
                          'Just Program',
                        ),
                      ),
                      Center(
                        child: Text(
                          'Just Program',
                        ),
                      ),
                    ],
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
