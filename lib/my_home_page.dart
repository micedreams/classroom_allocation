import 'package:classroom_allocation/all_classrooms.dart';
import 'package:classroom_allocation/all_students.dart';
import 'package:classroom_allocation/all_subjects.dart';
import 'package:classroom_allocation/endPoints/rest.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AllClassroomsScreen.routeName);
                },
                child: const Text("all  Classes ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AllSubjectsScreen.routeName);
                },
                child: const Text("all Subjects")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AllStudentsScreen.routeName);
                },
                child: const Text("all Students")),
          ],
        ),
      ),
    );
  }
}
