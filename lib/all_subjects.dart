import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:classroom_allocation/endPoints/subject_end_points.dart';
import 'package:classroom_allocation/view_subject.dart';
import 'package:flutter/material.dart';

class AllSubjectsScreen extends StatefulWidget {
  static const routeName = '/AllSubjectsScreen';

  const AllSubjectsScreen({Key? key}) : super(key: key);

  @override
  State<AllSubjectsScreen> createState() => _AllSubjectsScreenState();
}

class _AllSubjectsScreenState extends State<AllSubjectsScreen> {
  List<Subject> allSubjects = [];
  @override
  void initState() {
    getSubjects();
    super.initState();
  }

  getSubjects() async {
    var allSubjectsList = await SubjectEndPoints.getAllSubjects();

    setState(() {
      allSubjects = allSubjectsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AllSubjectsScreen"),
      ),
      body: (allSubjects.isEmpty)
          ? LoadingScreen.wheel()
          : ListView(
              children: allSubjects.map((e) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewSubjectScreen(subject: e),
                        ),
                      );
                    },
                    child: Text(e.name!));
              }).toList(),
            ),
    );
  }
}
