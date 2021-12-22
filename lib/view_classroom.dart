import 'package:classroom_allocation/endPoints/classroom_end_points.dart';
import 'package:classroom_allocation/endPoints/student_end_points.dart';
import 'package:classroom_allocation/endPoints/subject_end_points.dart';
import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:flutter/material.dart';

class ViewClassRoomScreen extends StatefulWidget {
  static const routeName = '/ViewClassroomScreen';
  final Classroom classRoom;

  const ViewClassRoomScreen({Key? key, required this.classRoom})
      : super(key: key);

  @override
  State<ViewClassRoomScreen> createState() => _ViewClassRoomScreenState();
}

class _ViewClassRoomScreenState extends State<ViewClassRoomScreen> {
  List<Student> allStudents = [];
  List<Subject> allSubjects = [];

  Classroom? classRoom;
  int? subjectId;
  String? teacherName;
  @override
  void initState() {
    getStudents();
    getSubjects();
    setState(() {
      classRoom = widget.classRoom;
    });
    super.initState();
  }

  getStudents() async {
    var allStudentsList = await StudentEndPoints.getAllStudents();

    setState(() {
      allStudents = allStudentsList;
    });
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
        title: Text(classRoom!.name!),
      ),
      body: (allSubjects.isEmpty && allStudents.isEmpty)
          ? LoadingScreen.wheel()
          : ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    const Text("Subject: "),
                    DropdownButton<int>(
                      hint: Text(classRoom!.subject == null
                          ? "Assign Subject"
                          : "ReAssign Subject"),
                      value: classRoom!.subject,
                      onChanged: (int? value) async {
                        setState(() {
                          subjectId = value!;
                        });
                        final response =
                            await ClassroomEndPoints.assignReAssignSubject(
                                classRoom!.id!, subjectId!);
                        setState(() {
                          classRoom = Classroom.fromJson(response);
                          teacherName = allSubjects[value! - 1].teacher;
                        });
                      },
                      items: allSubjects.map((value) {
                        return DropdownMenuItem<int>(
                          value: value.id,
                          child: Text(value.name!),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Card(
                    color: Colors.blue.shade200,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(teacherName != null ? teacherName! : "hi"),
                      ),
                    )),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing:
                      classRoom!.layout! == "conference" ? 100 : 0,
                  childAspectRatio: classRoom!.layout! == "conference" ? 3 : 1,
                  shrinkWrap: true,
                  crossAxisCount: classRoom!.layout! == "conference" ? 2 : 4,
                  children: List.generate(classRoom!.size!, (index) {
                    return Card(
                        color: Colors.blue.shade200,
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("${index + 1}."),
                        ));
                  }),
                ),
              ],
            ),
    );
  }
}
