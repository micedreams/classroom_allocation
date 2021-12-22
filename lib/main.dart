import 'package:classroom_allocation/all_classrooms.dart';
import 'package:classroom_allocation/all_students.dart';
import 'package:classroom_allocation/all_subjects.dart';
import 'package:classroom_allocation/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Allocation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AllClassroomsScreen.routeName: (context) => const AllClassroomsScreen(),
        AllSubjectsScreen.routeName: (context) => const AllSubjectsScreen(),
        AllStudentsScreen.routeName: (context) => const AllStudentsScreen(),
      },
      home: const MyHomePage(title: 'Class Allocation'),
    );
  }
}
