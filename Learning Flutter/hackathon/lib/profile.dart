import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  profile({Key? key}) : super(key: key);

  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Card(
            child: Column(
              children: [
                Image.asset("assets/pp.jpg", height: 200, width: 200),
                SizedBox(height: height * 0.001),
                ListTile(
                  title: Text("Name"),
                  subtitle: Text("Hassan Zaheer"),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.red[500],
                  ),
                  onTap: () {},
                ),
                Divider(color: Colors.red[300]),
                ListTile(
                  title: Text("Phone Number"),
                  subtitle: Text("03332396938"),
                  onTap: () {},
                ),
                Divider(color: Colors.red[300]),
                ListTile(
                  title: Text("Email"),
                  subtitle: Text("mhassanzaheer@gmail"),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.red[500],
                  ),
                  onTap: () {},
                ),
                Divider(color: Colors.red[300]),
                ListTile(
                  title: Text("Password"),
                  subtitle: Text("*****"),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.red[500],
                  ),
                  onTap: () {},
                ),
                Divider(color: Colors.red[300]),
              ],
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 35,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ]),
        ),
      ),
    );
  }
}
