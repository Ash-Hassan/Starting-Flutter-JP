// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:otpapp/register.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Image.asset(
            "assets/images/illustration-1.png",
            width: 200,
          ),
        ),
        const Text("Lets get started",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 10,
        ),
        const Text("Never a better time than now to start.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black38,
            ),
            textAlign: TextAlign.center),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 350,
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => register()),
                );
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                )),
              ),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 16),
                ),
              )),
        ),
        const SizedBox(
          height: 22,
        ),
        SizedBox(
          width: 350,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
