// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Image.asset(
                "assets/menu.png",
                height: 12,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black87,
          ),
          SizedBox(
            width: 14,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                "Popular Now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 14),
                child: Row(children: <Widget>[
                  slider_item(
                      'assets/Book1.png', "Creative Hustle", "Ramen Albert"),
                  slider_item(
                      'assets/Book2.png', "Art Unleashed", "Stefano Milik"),
                  slider_item(
                      'assets/Book3.png', "The Study of brain", "Taylor Ross"),
                ])),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                "Bestsellers",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 14),
                child: Row(children: <Widget>[
                  slider_item(
                      'assets/Book3.png', "The Study of brain", "Taylor Ross"),
                  slider_item(
                      'assets/Book4.png', "96 Roles of luck", "Micheal jack"),
                  slider_item(
                      'assets/Book2.png', "Art Unleashed", "Stefano Milik"),
                ]))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple[900],
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_input_component_outlined),
            label: 'Calls',
          )
        ],
      ),
    );
  }
}

Widget slider_item(String img, String title, String sub) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          margin: const EdgeInsets.all(5.0),
          width: 150,
          child: Image.asset(img)),
      Container(
        margin: const EdgeInsets.only(left: 14),
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 14, top: 5),
        child: Text(
          sub,
        ),
      )
    ],
  );
}
