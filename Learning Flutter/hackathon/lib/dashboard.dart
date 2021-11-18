import 'package:flutter/material.dart';
import 'package:hackathon/Fav.dart';
import 'package:hackathon/about.dart';
import 'package:hackathon/cart.dart';
import 'package:hackathon/prodDesc.dart';
import 'package:hackathon/profile.dart';
import 'package:hackathon/search.dart';

var cartcount = 0;
var favcount = 0;

var catpicx = [
  "p1.jpg",
  "p4.jpg",
  "p3.jpg",
  "p2.jpg",
];

var catTitle = [
  "Men's Casual Coat",
  "Casual Snearkers",
  "Men's Hoodies",
  "Men's Shirt"
];
var catDetail = [
  "Winter Collection",
  "Men's Shoes",
  "Winter Collection",
  "New Arrivals"
];
var pics = [
  "p1.jpg",
  "p2.jpg",
  "p3.jpg",
  "p4.jpg",
  "p5.jpg",
  "p6.jpg",
  "p7.jpg",
];
var itemsname = [
  "Blue Casual Coat",
  "Cool Blue Shirt",
  "Blue Hoodie",
  "Casual Sneaker",
  "Football Shoes",
  "Moonwalk Shoes",
  "Mens Joggers",
];
var prices = [
  "\$50",
  "\$100",
  "\$150",
  "\$200",
  "\$250",
  "\$300",
  "\$350",
];

var favitem = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

var addedcart = [];

var favname = [];
var favpic = [];
var favprice = [];

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Home Page",
              style: TextStyle(color: Colors.black),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.red),
          actions: [
            Row(
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fav(
                                  favname: favname,
                                  favpic: favpic,
                                  favprice: favprice,
                                )));
                  },
                ),
                SizedBox(
                  width: width * 0.05,
                  child: Text(
                    favcount.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => cart(addedData: addedcart))),
                ),
                SizedBox(
                  width: width * 0.05,
                  child: Text(
                    cartcount.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 14),
                child: Row(children: [
                  slider_item(catpicx[0], catTitle[0], catDetail[0]),
                  slider_item(catpicx[1], catTitle[1], catDetail[1]),
                  slider_item(catpicx[2], catTitle[2], catDetail[2]),
                  slider_item(catpicx[3], catTitle[3], catDetail[3]),
                ])),
            Container(
              height: 1,
              margin: EdgeInsets.symmetric(vertical: 5),
              color: Colors.grey,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: pics.length,
                itemBuilder: (context, index) {
                  return cards(context, index, pics[index], itemsname[index],
                      prices[index], favitem[index]);
                },
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(4.0),
            children: [
              GestureDetector(
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.transparent),
                    accountName: Text(
                      "Muhammad Hassan",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text(
                      "mhassanzaheer@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPicture: Image.asset("assets/pp.jpg"),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()))),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                title: const Text("Account"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
              ),
              ListTile(
                leading: GestureDetector(
                  child: Icon(Icons.shopping_cart_rounded, color: Colors.red),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cart(addedData: addedcart)));
                  },
                ),
                title: Text("Cart"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.red,
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => productdescription()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite_outlined,
                  color: Colors.red,
                ),
                title: Text("Favourite"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => fav(
                                favname: favname,
                                favpic: favpic,
                                favprice: favprice,
                              )));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.red,
                ),
                title: Text("Invite Friends"),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.red),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.announcement, color: Colors.red),
                title: Text("About Us"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
                },
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.red,
                  ),
                  title: Text("Log Out"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.red,
            currentIndex: 1,
            iconSize: 30,
            onTap: (int index) => btn(index, context),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.red,
                ),
                label: 'Services',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                label: 'Profile',
              ),
            ]));
  }

  btn(i, context) {
    if (i == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => dashboard()));
    } else if (i == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => search()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => profile()));
    }
  }

  Card cards(BuildContext context, i, picx, txt, paisa, fav) {
    var iconcheck = false;
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: InkWell(
        child: Container(
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                offset: Offset(0, 5),
                spreadRadius: 1,
              )
            ],
          ),
          child: Column(
            children: [
              ListTile(
                leading: GestureDetector(
                    child: iconfav(fav),
                    onTap: () {
                      setState(() {
                        if (favitem[i] == false) {
                          favitem.removeAt(i);
                          favitem.insert(i, true);
                        } else {
                          favitem.removeAt(i);
                          favitem.insert(i, false);
                        }
                        var data = [picx, txt, paisa];
                        favrcheck(data);
                      });
                    }),
                trailing: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "30% off",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                child: Image.asset(
                  "assets/" + picx,
                  width: 130,
                  fit: BoxFit.fill,
                ),
                //pics ka linkn dena hai
              ),
              ListTile(
                dense: true,
                leading: Text(
                  txt,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Text(
                  paisa,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                child: ListTile(
                    trailing: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                    dense: true),
                onTap: () {
                  setState(() {
                    var data = [picx, txt, paisa, fav];
                    addedcart.add(data);
                    ++cartcount;
                  });
                },
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => proddesc(
                        pic: picx,
                        name: txt,
                        price: paisa,
                        decs:
                            "Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry.\nLorem Ipsum has been the industry's \nstandard dummy text ever since \nthe 1500s",
                      )));
        },
      ),
    );
  }

  Icon iconfav(bool check) {
    if (check == false) {
      return Icon(
        Icons.favorite_outline,
        color: Colors.black,
      );
    } else {
      return Icon(
        Icons.favorite,
        color: Colors.red,
      );
    }
  }
}

Widget slider_item(String img, String title, String sub) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          margin: const EdgeInsets.all(5.0),
          width: 150,
          child: Image.asset("assets/" + img)),
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

favrcheck(data) {
  if (favpic.contains(data[0])) {
    --favcount;
    favpic.remove(data[0]);
    favname.remove(data[1]);
    favprice.remove(data[2]);
  } else {
    ++favcount;
    favpic.add(data[0]);
    favname.add(data[1]);
    favprice.add(data[2]);
  }
  print(favpic.contains(data[0]));
  print(data[0]);
  print(favpic);
}
