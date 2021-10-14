import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Whatsapp"),
          actions: const [Center(child: Icon(Icons.more_vert))],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blueGrey[200],
            child: Column(
              children: [
                // Container(
                //   color: Colors.blueGrey,
                //   height: 200,
                //   width: 200,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   color: Colors.blueGrey,
                //   height: 200,
                //   width: 200,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   color: Colors.blueGrey,
                //   height: 200,
                //   width: 200,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   color: Colors.blueGrey,
                //   height: 200,
                //   width: 200,
                // ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.amberAccent,
                  ),
                  title: const Text("Hassan"),
                  subtitle: const Text("Hello"),
                  trailing: Column(children: const [
                    Text("9:00"),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(FontAwesomeIcons.checkDouble,
                        size: 20, color: Colors.blue)
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.limeAccent,
                  ),
                  title: const Text("Hyder"),
                  subtitle: const Text("Hi How are you?"),
                  trailing: Column(children: const [
                    Text("7:00"),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.checkDouble,
                      size: 20,
                    )
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.redAccent,
                  ),
                  title: Text("Areeba"),
                  subtitle: Text("FYP Partner hellow?"),
                  trailing: Column(children: const [
                    Text("12:00"),
                    Icon(Icons.check),
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.cyanAccent,
                  ),
                  title: const Text("Sabah"),
                  subtitle: const Text("aj bhi susti ho rahi!"),
                  trailing: Column(children: const [
                    Text("Yesterday"),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: Icon(Icons.check),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.amberAccent,
                  ),
                  title: const Text("Hassan"),
                  subtitle: const Text("Hello"),
                  trailing: Column(children: const [
                    Text("9:00"),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(FontAwesomeIcons.checkDouble,
                        size: 20, color: Colors.blue)
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.limeAccent,
                  ),
                  title: const Text("Hyder"),
                  subtitle: const Text("Hi How are you?"),
                  trailing: Column(children: const [
                    Text("7:00"),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.checkDouble,
                      size: 20,
                    )
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.redAccent,
                  ),
                  title: Text("Areeba"),
                  subtitle: Text("FYP Partner hellow?"),
                  trailing: Column(children: const [
                    Text("12:00"),
                    Icon(Icons.check),
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.cyanAccent,
                  ),
                  title: const Text("Sabah"),
                  subtitle: const Text("aj bhi susti ho rahi!"),
                  trailing: Column(children: const [
                    Text("Yesterday"),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: Icon(Icons.check),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.amberAccent,
                  ),
                  title: const Text("Hassan"),
                  subtitle: const Text("Hello"),
                  trailing: Column(children: const [
                    Text("9:00"),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(FontAwesomeIcons.checkDouble,
                        size: 20, color: Colors.blue)
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.limeAccent,
                  ),
                  title: const Text("Hyder"),
                  subtitle: const Text("Hi How are you?"),
                  trailing: Column(children: const [
                    Text("7:00"),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.checkDouble,
                      size: 20,
                    )
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.redAccent,
                  ),
                  title: Text("Areeba"),
                  subtitle: Text("FYP Partner hellow?"),
                  trailing: Column(children: const [
                    Text("12:00"),
                    Icon(Icons.check),
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.cyanAccent,
                  ),
                  title: const Text("Sabah"),
                  subtitle: const Text("aj bhi susti ho rahi!"),
                  trailing: Column(children: const [
                    Text("Yesterday"),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: Icon(Icons.check),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 0.5,
                  width: 350,
                  child: Container(
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget chat(String name, String msg, String date) {
  return ListTile(
    leading: const CircleAvatar(
      radius: 25,
      backgroundColor: Colors.amberAccent,
    ),
    title: Text(name),
    subtitle: Text(msg),
    trailing: Column(children: [
      Text(date),
      const SizedBox(
        height: 10,
      ),
      const Icon(FontAwesomeIcons.checkDouble, size: 20, color: Colors.blue)
    ]),
  );
}
