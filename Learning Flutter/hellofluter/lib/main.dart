import 'package:flutter/material.dart';
import 'package:dotup_flutter_signin_button/dotup_flutter_signin_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text("Assignment 5"),
            toolbarHeight: 60.2,
            backgroundColor: Colors.transparent,
          ),
          body: Center(
              child: Container(
                  constraints: const BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.wallpapersafari.com/95/3/6d8JjI.jpg"),
                          fit: BoxFit.cover)),
                  height: 100,
                  width: 100,
                  //color: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Image.network(
                              "https://icon-library.com/images/lock-icon-transparent/lock-icon-transparent-11.jpg"),
                        ),
                        const SizedBox(
                          width: 350,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffa8e0ff))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff8ee3f5))),
                                labelText: 'Email:',
                                labelStyle: TextStyle(color: Color(0xff8ee3f5)),
                                hintText: 'abc@xyz.com',
                                hintStyle: TextStyle(color: Color(0xff70cad1))),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const SizedBox(
                          width: 350,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffa8e0ff))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff8ee3f5))),
                                labelText: 'Password:',
                                labelStyle: TextStyle(color: Color(0xff8ee3f5)),
                                hintText: 'min 8 char',
                                hintStyle: TextStyle(color: Color(0xff70cad1))),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                            color: const Color(0xff70cad1),
                            // ignore: avoid_print
                            onPressed: () => print("Button Pressed"),
                            child: const Text("Press here"),
                            elevation: 5,
                            splashColor: const Color(0xff3E517A)),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SignInButton.mini(
                              Buttons.Facebook,
                              backgroundColor: Colors.blueGrey[600],
                              //iconColor: Colors.blue[900],
                              onPressed: () {
                                // ignore: avoid_print
                                print("Facebook is Pressed");
                              },
                            ),
                            SignInButton.mini(
                              Buttons.Google,
                              backgroundColor: Colors.blueGrey[600],
                              //iconColor: Colors.red,
                              onPressed: () {
                                // ignore: avoid_print
                                print("Google is Pressed");
                              },
                            ),
                            SignInButton.mini(
                              Buttons.Twitter,
                              backgroundColor: Colors.blueGrey[600],
                              //iconColor: Colors.blue,
                              onPressed: () {
                                // ignore: avoid_print
                                print("Twitter is Pressed");
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )))),
    );
  }
}
