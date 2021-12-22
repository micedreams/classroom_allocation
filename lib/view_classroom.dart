import 'package:classroom_allocation/endPoints/classroom_end_points.dart';
import 'package:classroom_allocation/endPoints/registration_end_points.dart';
import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:classroom_allocation/provider_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ViewClassRoomScreen extends StatefulWidget {
  static const routeName = '/ViewClassroomScreen';
  final Classroom classRoom;

  const ViewClassRoomScreen({Key? key, required this.classRoom})
      : super(key: key);

  @override
  State<ViewClassRoomScreen> createState() => _ViewClassRoomScreenState();
}

class _ViewClassRoomScreenState extends State<ViewClassRoomScreen> {
  Classroom? classRoom;
  int? subjectId;
  String? teacherName;
  @override
  void initState() {
    setState(() {
      classRoom = widget.classRoom;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Student> allStudents =
        context.select((ProviderProvider p) => p.allStudents!);
    List<Subject> allSubjects =
        context.select((ProviderProvider p) => p.allSubjects!);
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
                ElevatedButton(
                  onPressed: () async {
                    final response =
                        await RegistrationEndPoints.getAllRegistrations();
                    print(response);
                  },
                  child: Text("Get all  Registrations"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final response =
                        await RegistrationEndPoints.getRegistration(565);
                    print(response);
                  },
                  child: Text("Get 1  Registrations"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final response =
                        await RegistrationEndPoints.makeRegistration(1,1);
                     print(response);
                  },
                  child: Text("make Registrations"),
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
