import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  final addedData;

  const cart({Key? key, required this.addedData}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> cartData = widget.addedData;
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
        itemCount: cartData.length,
        itemBuilder: (context, index) {
          return cards(context, cartData[index], index, cartData);
        },
      ),
    );
  }

  Card cards(BuildContext context, data, index, cart) {
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
                    child: iconfav(data[3]),
                    onTap: () {
                      setState(() {});
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
                  "assets/" + data[0].toString(),
                  width: 130,
                  fit: BoxFit.fill,
                ),
                //pics ka linkn dena hai
              ),
              ListTile(
                dense: true,
                leading: Text(
                  data[1],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Text(
                  data[2],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                child: ListTile(
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    dense: true),
                onTap: () {
                  setState(() {
                    cart.removeAt(index);
                  });
                },
              )
            ],
          ),
        ),
        onTap: () {},
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
