import 'package:classroom_allocation/models/student.dart';
import 'package:flutter/material.dart';

class ViewStudentScreen extends StatefulWidget {
  static const routeName = '/ViewStudentsScreen';
  final Student student;

  const ViewStudentScreen({Key? key, required this.student}) : super(key: key);

  @override
  State<ViewStudentScreen> createState() => _ViewStudentScreenState();
}

class _ViewStudentScreenState extends State<ViewStudentScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.student);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
          Text("Name:${widget.student.name!}"),
          Text("Age:${widget.student.age.toString()}"),
          Text("Email:${widget.student.email!}"),
        ],
      ),
    );
  }
}
