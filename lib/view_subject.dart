import 'package:classroom_allocation/models/subject.dart';
import 'package:flutter/material.dart';

class ViewSubjectScreen extends StatefulWidget {
  static const routeName = '/ViewSubjectsScreen';
  final Subject subject;

  const ViewSubjectScreen({Key? key, required this.subject}) : super(key: key);

  @override
  State<ViewSubjectScreen> createState() => _ViewSubjectScreenState();
}

class _ViewSubjectScreenState extends State<ViewSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
          Text("Name:${widget.subject.name!}"),
          Text("teacher:${widget.subject.teacher!}"),
          Text("credit:${widget.subject.credits == null? 0: widget.subject.credits.toString()}"),
        ],
      ),
    );
  }
}
