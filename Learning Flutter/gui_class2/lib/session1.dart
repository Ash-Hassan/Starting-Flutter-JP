import 'package:flutter/material.dart';

class session1 extends StatelessWidget {
  const session1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: RadialGradient(colors: [
                    Colors.grey,
                    Colors.blue,
                  ])),
              margin: const EdgeInsets.only(left: 100, top: 69),
              padding: const EdgeInsets.only(top: 90, left: 67),
              child: const Text("Gradient"),
              height: 200,
              width: 200,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(100, 15)),
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Colors.orange,
                    Colors.yellow,
                    Colors.green,
                    Colors.blue,
                    Colors.indigo,
                    Colors.purple,
                  ])),
              margin: const EdgeInsets.only(left: 100, top: 39),
              child: Center(
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2014/03/24/17/20/angel-295446_1280.png",
                  height: 150,
                  width: 150,
                ),
              ),
              height: 200,
              width: 200,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: RadialGradient(colors: [
                    Colors.grey,
                    Colors.blueGrey,
                  ])),
              margin: const EdgeInsets.only(left: 100, top: 39),
              child: Center(
                child: Image.asset(
                  "assets/angel-4870050_1280.png",
                  height: 150,
                  width: 150,
                ),
              ),
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
