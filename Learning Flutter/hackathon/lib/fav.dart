// ignore_for_file: file_names

import 'package:flutter/material.dart';

class fav extends StatefulWidget {
  final favpic;
  final favname;
  final favprice;

  const fav(
      {Key? key,
      required this.favpic,
      required this.favprice,
      required this.favname})
      : super(key: key);

  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.red,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.favpic.length,
        itemBuilder: (context, index) {
          return cards(context, widget.favpic[index], widget.favname[index],
              widget.favprice[index]);
        },
      ),
    );
  }

  Card cards(BuildContext context, pic, name, price) {
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
                leading: InkWell(
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    onTap: () {
                      setState(() {
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        );
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
                  "assets/" + pic,
                  width: 130,
                  fit: BoxFit.fill,
                ),
                //pics ka linkn dena hai
              ),
              ListTile(
                dense: true,
                leading: Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Text(
                  price,
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
                onTap: () {},
              )
            ],
          ),
        ),
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => proddesc(
          //               pic: picx,
          //               name: txt,
          //               price: paisa,
          //               decs:
          //                   "Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry.\nLorem Ipsum has been the industry's \nstandard dummy text ever since \nthe 1500s",
          //             )));
        },
      ),
    );
  }
}
