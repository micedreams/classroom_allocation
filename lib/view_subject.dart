import 'package:classroom_allocation/helpers/NewScaffold.dart';
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
    return NewScaffold(
      title: widget.subject.name!,
      body: ListView(
        children: [
          Text("teacher:${widget.subject.teacher!}"),
          Text(
              "credit:${widget.subject.credits == null ? 0 : widget.subject.credits.toString()}"),
        ],
      ),
    );
  }
}
