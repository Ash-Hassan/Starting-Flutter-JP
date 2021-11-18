import 'package:flutter/material.dart';
import 'package:hackathon/profile.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListTile(
            leading: InkWell(
              child: Container(
                  margin: EdgeInsets.only(left: 6, top: 10),
                  child: Icon(Icons.cancel_outlined)),
              onTap: () => Navigator.pop(context),
            ),
            title: TextField(
              decoration: InputDecoration(label: Text("Search")),
            ),
            trailing: Container(
                margin: EdgeInsets.only(left: 6, top: 10),
                child: Icon(Icons.search))),
      ),
    );
  }
}
