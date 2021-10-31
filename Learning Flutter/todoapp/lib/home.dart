// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

var status = [true, true, false, false];
var titles = ["Assignment 6", "Flutter class", "Uni Lecture", "Fyp Task"];
var due = ["16 Nov", "17 Nov", "18 Nov", "23 Nov"];
var dueTime = ["08:15 pm", "12:15 pm", "08:40 am", "06:00 pm"];

int _selectedIndex = 0;

class _homeState extends State<home> {
  int _index = 0;

  addbtn(_index) {
    if (_index == 1) {
      setState(() {
        _addTaskDialog(context);
      });
    } else {
      setState(() {
        status.removeRange(4, status.length);
        titles.removeRange(4, status.length);
        due.removeRange(4, status.length);
        dueTime.removeRange(4, status.length);
      });
    }
  }

  addtask(t_txt, d_txt, time_txt) {
    setState(() {
      status.add(false);
      titles.add(t_txt);
      due.add(d_txt);
      dueTime.add(time_txt);
    });
  }

  updatetask(index, t_txt, d_txt, time_txt) {
    setState(() {
      titles.removeAt(index);
      due.removeAt(index);
      dueTime.removeAt(index);

      titles.insert(index, t_txt);
      due.insert(index, d_txt);
      dueTime.insert(index, time_txt);
    });
  }

  TextEditingController titletxt = TextEditingController();
  TextEditingController datetxt = TextEditingController();
  TextEditingController timetxt = TextEditingController();

  TextEditingController upTitle = TextEditingController();
  TextEditingController upDate = TextEditingController();
  TextEditingController upTime = TextEditingController();

  Future<void> _addTaskDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titletxt,
                decoration: InputDecoration(hintText: "Title"),
              ),
              TextField(
                controller: datetxt,
                decoration: InputDecoration(hintText: "Due date"),
              ),
              TextField(
                controller: timetxt,
                decoration: InputDecoration(hintText: "Due time"),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                addtask(titletxt.text, datetxt.text, timetxt.text);
                titletxt.clear();
                datetxt.clear();
                timetxt.clear();
                titletxt.clear();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _updateTaskDialog(BuildContext context, index) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Update Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: upTitle,
                decoration: InputDecoration(hintText: titles[index]),
              ),
              TextField(
                controller: upDate,
                decoration: InputDecoration(hintText: due[index]),
              ),
              TextField(
                controller: upTime,
                decoration: InputDecoration(hintText: dueTime[index]),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                updatetask(index, upTitle.text, upDate.text, upTime.text);
                upTitle.clear();
                upDate.clear();
                upTime.clear();
              },
            ),
          ],
        );
      },
    );
  }

  GlobalKey<ScaffoldState> _key = GlobalKey(); // added
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: const Center(
            child: Text(
          "My Task",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Rock Salt",
              fontSize: 22,
              fontWeight: FontWeight.w400),
        )),
        backgroundColor: Colors.grey[200],
      ),
      body: ListView.builder(
          itemCount: status.length,
          itemBuilder: (context, index) {
            final item = titles[index];
            return Dismissible(
              key: Key(item),
              background: slideRightBackground(),
              secondaryBackground: slideLeftBackground(),
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.endToStart) {
                  final bool res = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content:
                              const Text("Are you sure you want to delete?"),
                          actions: <Widget>[
                            FlatButton(
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                            ),
                            FlatButton(
                              child: const Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                            ),
                          ],
                        );
                      });
                  return res;
                } else {
                  // TODO: Navigate to edit page;
                  _updateTaskDialog(context, index);
                }
              },
              onDismissed: (direction) {
                setState(() {
                  List delData = [
                    status.removeAt(index),
                    titles.removeAt(index),
                    due.removeAt(index),
                    dueTime.removeAt(index),
                  ];
                  _key.currentState!
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Deleted \"${delData[1]}\""),
                        action: SnackBarAction(
                            label: "UNDO",
                            onPressed: () => setState(() {
                                  status.insert(index, delData[0]);
                                  titles.insert(index, delData[1]);
                                  due.insert(index, delData[2]);
                                  dueTime.insert(index, delData[3]);
                                }))));
                });
              },
              child: task(index, status[index], titles[index], due[index],
                  dueTime[index]),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blueAccent,
          currentIndex: 1,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) => addbtn(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_rounded,
                size: 50,
              ),
              label: 'Add Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     Navigator.push(context, MaterialPageRoute(builder: (_) => newTask()));
  //   });
  // }

  chkbtn(index) {
    setState(() {
      var prevData = status[index];
      status.removeAt(index);
      if (prevData == false) {
        status.insert(index, true);
      } else {
        status.insert(index, false);
      }
    });
  }

  Widget task(index, bool checked, String data, String date, String time) {
    return Column(
      children: [
        Container(
          height: 72,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
              border: const Border(
                right: BorderSide(width: 5, color: Colors.blueAccent),
              )),
          child: Center(
            child: ListTile(
              leading: GestureDetector(
                  onTap: () {
                    chkbtn(index);
                  },
                  child: check(checked)),
              title: Text(data),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(time),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget check(bool checked) {
    if (checked == false) {
      return const Icon(Icons.check_box_outline_blank_rounded,
          color: Colors.blueAccent);
    } else {
      return const Icon(Icons.check_box_rounded, color: Colors.blueAccent);
    }
  }

  Widget slideRightBackground() {
    return Container(
      color: Colors.green,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              " Edit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}
