// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class statefull extends StatefulWidget {
  const statefull({Key? key}) : super(key: key);

  @override
  _statefullState createState() => _statefullState();
}

var price = ["\$199.99", "\$149.99", "\$99.99", "\$299.99", "\$249.99"];
var titles = [
  "Men's Cat Boots",
  "Men's Casual Sneakrs",
  "Men's Gym Wear",
  "Men's Casual Shoes",
  "Men's Sports Wear"
];
var catt = ["Mens", "Mens", "Mens", "Mens", "Mens"];
var reviw = [5, 4, 3, 4, 5];

var clrs = [
  Colors.amber,
  Colors.blueAccent,
  Colors.limeAccent,
  Colors.tealAccent
];

class _statefullState extends State<statefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset(
            "assets/logo.jpg",
          ),
        ),
        title: const Text(
          "MobiSport",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Running",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                Text("15 Results", style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (
                context,
                index,
              ) {
                //return abc(data[index], clrs[index]);
                return card(index, titles[index], catt[index], reviw[index],
                    price[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blueAccent,
          currentIndex: 1,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 50,
              ),
              label: 'Checkout',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}

Widget card(int i, String title, String cat, int review, String price) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    height: 130,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          blurRadius: 5,
          offset: const Offset(0, 5),
          spreadRadius: 1)
    ]),
    child: Row(children: [
      Container(
        height: 130,
        width: 130,
        color: Colors.amber,
        child: img(i),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            margin: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              title,
              style: GoogleFonts.teko(fontWeight: FontWeight.w700),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 12),
              child: Text(cat, style: GoogleFonts.teko(fontSize: 10))),
          Container(
            margin: const EdgeInsets.only(left: 18, top: 2),
            child: reviews(review),
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 5),
              child: Text(price,
                  style: GoogleFonts.lato(
                      fontSize: 25, fontWeight: FontWeight.w900)))
        ],
      )
    ]),
  );
}

Widget reviews(int fil) {
  if (fil == 5) {
    return Row(
      children: [
        stars(true),
        stars(true),
        stars(true),
        stars(true),
        stars(true)
      ],
    );
  } else if (fil == 4) {
    return Row(
      children: [
        stars(true),
        stars(true),
        stars(true),
        stars(true),
        stars(false)
      ],
    );
  } else if (fil == 3) {
    return Row(
      children: [
        stars(true),
        stars(true),
        stars(true),
        stars(false),
        stars(false)
      ],
    );
  } else if (fil == 2) {
    return Row(
      children: [
        stars(true),
        stars(true),
        stars(false),
        stars(false),
        stars(false)
      ],
    );
  } else if (fil == 1) {
    return Row(
      children: [
        stars(true),
        stars(false),
        stars(false),
        stars(false),
        stars(false)
      ],
    );
  } else {
    return Row(
      children: [
        stars(false),
        stars(false),
        stars(false),
        stars(false),
        stars(false)
      ],
    );
  }
}

Widget stars(bool fill) {
  if (fill == true) {
    return Icon(
      Icons.star,
      size: 15,
    );
  } else {
    return Icon(
      Icons.star_border,
      size: 15,
    );
  }
}

Widget img(int i) {
  String src = "assets/pic" + (i + 1).toString() + ".jpg";
  return Image.asset(
    src,
    width: double.infinity,
  );
}

Widget abc(String data, Color clr) {
  return Column(
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(clr.value),
          radius: 25,
        ),
        title: Text(data),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
