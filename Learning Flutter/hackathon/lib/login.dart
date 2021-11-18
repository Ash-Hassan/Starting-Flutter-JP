import 'package:flutter/material.dart';
import 'package:hackathon/dashboard.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController usertxt = TextEditingController();
  TextEditingController passtxt = TextEditingController();

  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.asset("assets/cart.gif"),
          Container(
            margin: EdgeInsets.only(top: height * 0.025),
            width: 250,
            child: TextField(
              controller: usertxt,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20)),
                labelText: 'Username:',
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.025),
            width: 250,
            child: TextField(
              obscureText: true,
              controller: passtxt,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20)),
                labelText: 'Password:',
                labelStyle: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.025),
            width: 110,
            child: MaterialButton(
              height: 40,
              onPressed: () {
                _Dialog(context, passtxt.text);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.login,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: height * 0.025),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Not have an account? "),
                InkWell(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onTap: () {},
                ),
              ]))
        ],
      ),
    );
  }
}

Future<void> _Dialog(BuildContext context, pass) async {
  if (pass == "123456") {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => dashboard()));
  } else {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Wrong Password'),
          content: const Text("Please try agin"),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
