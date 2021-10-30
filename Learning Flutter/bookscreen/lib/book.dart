// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class book extends StatefulWidget {
  const book({Key? key}) : super(key: key);

  @override
  _bookState createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffe7dad1),
          leading: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                  )),
            ],
          ),
          actions: const [
            Icon(
              Icons.bookmark_border_rounded,
              size: 30,
              color: Colors.black87,
            ),
            SizedBox(
              width: 14,
            ),
            Icon(
              Icons.more_vert_rounded,
              size: 30,
              color: Colors.black87,
            ),
            SizedBox(
              width: 14,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xffe7dad1),
              child: Column(children: [
                Center(child: Image.asset("assets/prodbook.png")),
                const SizedBox(height: 25),
                const Text(
                  "Brand Strategy",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Dean Werner",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  stars(true),
                  stars(true),
                  stars(true),
                  stars(true),
                  stars(false),
                  const SizedBox(width: 5),
                  const Text("4.5",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                  const Text(" / 5.0",
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ]),
                const SizedBox(height: 20),
              ]),
            ),
            const SizedBox(height: 20),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(width: 35),
              Container(
                width: 5,
                height: 130,
                color: Colors.grey[300],
              ),
              const SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Description",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                  SizedBox(height: 5),
                  Text(
                      "Dean on branding presents in a\ncompact from the twenty essential\nprinciples of branding that will lead to\nthe creation of strong brands....",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      )),
                ],
              ),
            ]),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 45,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(width: 2, color: Colors.grey.shade300),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.menu_rounded, color: Colors.black),
                        SizedBox(width: 10),
                        Text(
                          "Preview",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Container(
                    width: 150,
                    height: 45,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: BorderSide(width: 2, color: Colors.grey.shade300),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.chat_bubble_outline_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Reviews",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 10),
            Container(
                width: 330,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.deepPurple[900],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Buy Now For \$29.67",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3),
                  ),
                )),
          ],
        ));
  }
}

Widget stars(bool fill) {
  if (fill == true) {
    return Icon(
      Icons.star_rounded,
      color: Colors.deepPurple[900],
      size: 30,
    );
  } else {
    return Icon(
      Icons.star_half_rounded,
      color: Colors.deepPurple[900],
      size: 30,
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
