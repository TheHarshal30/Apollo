// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:manager/Screens/Dashboard.dart';
import 'package:manager/Screens/HomePage.dart';

class NavPage extends StatefulWidget {
  int pageIndex = 0;
  NavPage({required this.pageIndex, super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  List<Widget> screens = [HomePage(), Dashboard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        /*appBar: AppBar(
          backgroundColor: Colors.black,
          //backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.pageIndex == 0) ...[
                  Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(236, 255, 25, 1),
                    ),
                  ),
                ] else if (widget.pageIndex == 2) ...[
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(186, 201, 255, 1),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),*/
        body: SafeArea(child: screens[widget.pageIndex]));
  }
}
