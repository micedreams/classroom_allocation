import 'package:classroom_allocation/helpers/NewScaffold.dart';
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
    return NewScaffold(
      title: widget.student.name!,
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Age: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.student.age.toString()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Email: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(widget.student.email!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
