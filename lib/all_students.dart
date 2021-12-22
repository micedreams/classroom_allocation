import 'package:classroom_allocation/get_end_points.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:flutter/material.dart';

class AllStudentsScreen extends StatefulWidget {
  static const routeName = '/AllStudentsScreen';

  const AllStudentsScreen({Key? key}) : super(key: key);

  @override
  State<AllStudentsScreen> createState() => _AllStudentsScreenState();
}

class _AllStudentsScreenState extends State<AllStudentsScreen> {
  List<Student> allStudents = [];
  @override
  void initState() {
    getStudents();
    super.initState();
  }

  getStudents() async {
    var allStudentsList = await GetEndPoints.getAllStudents();

    setState(() {
      allStudents = allStudentsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AllStudentsScreen"),
      ),
      body: ListView(
        children: allStudents.map((e) {
          return ElevatedButton(onPressed: () {}, child: Text(e.name!));
        }).toList(),
      ),
    );
  }
}
