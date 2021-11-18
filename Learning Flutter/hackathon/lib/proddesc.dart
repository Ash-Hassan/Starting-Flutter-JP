// ignore_for_file: file_names

import 'package:flutter/material.dart';

class proddesc extends StatefulWidget {
  final String name;
  final String price;
  final String pic;
  final String decs;

  const proddesc(
      {Key? key,
      required this.name,
      required this.price,
      required this.pic,
      required this.decs})
      : super(key: key);

  @override
  _proddescState createState() => _proddescState();
}

class _proddescState extends State<proddesc> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.red,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Column(children: [
                Center(child: Image.asset("assets/" + widget.pic)),
                const SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Text(
                      widget.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: width * 0.45,
                    ),
                    Text(
                      widget.price,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(height: height * 0.05),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(width: 35),
              Container(
                width: 5,
                height: 130,
                color: Colors.red,
              ),
              SizedBox(width: width * 0.025),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 5),
                  Text(widget.decs,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      )),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
