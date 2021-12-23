import 'package:classroom_allocation/endPoints/registration_end_points.dart';
import 'package:classroom_allocation/helpers/NewScaffold.dart';
import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/registration.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:classroom_allocation/provider_provider.dart';
import 'package:classroom_allocation/view_student.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class ViewSubjectScreen extends StatefulWidget {
  static const routeName = '/ViewSubjectsScreen';
  final Subject subject;

  const ViewSubjectScreen({Key? key, required this.subject}) : super(key: key);

  @override
  State<ViewSubjectScreen> createState() => _ViewSubjectScreenState();
}

class _ViewSubjectScreenState extends State<ViewSubjectScreen> {
  String? removeRegistrationId;
  String? addStudentId;
  bool loadingScreen = false;
  @override
  Widget build(BuildContext context) {
    late List<Registration> registrationsWithMySubjectID;
    List<Registration> allRegistration =
        context.select((ProviderProvider p) => p.allRegistration!);
    List<Student> allStudents =
        context.select((ProviderProvider p) => p.allStudents!);
    setState(() {
      registrationsWithMySubjectID = allRegistration
          .where((x) => x.subject == widget.subject.id!)
          .toList();
    });

    return NewScaffold(
      title: widget.subject.name!,
      body: loadingScreen
          ? LoadingScreen.wheel()
          : ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        "teacher: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(widget.subject.teacher!),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        "credit: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          "${widget.subject.credits == null ? 0 : widget.subject.credits.toString()}"),
                    ],
                  ),
                ),
                registrationsWithMySubjectID.isEmpty
                    ? const SizedBox.shrink()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Registrations: ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ...registrationsWithMySubjectID.map((x) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ViewStudentScreen(
                                        student: allStudents[x.student! - 1]),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Text("${allStudents[x.student! - 1].name}"),
                              ),
                            );
                          }).toList(),
                          DropdownButton(
                            hint: const Text("Remove Student"),
                            value: removeRegistrationId,
                            onChanged: (String? value) async {
                              setState(() {
                                loadingScreen = true;
                                removeRegistrationId = value!;
                              });

                              await RegistrationEndPoints.deleteRegistration(
                                  removeRegistrationId!);
                              await RegistrationEndPoints.getAllRegistrations()
                                  .then((val) {
                                setState(() {
                                  allRegistration = val;
                                });
                                Provider.of<ProviderProvider>(context,
                                        listen: false)
                                    .updateRegistration(val);
                              });

                              setState(() {
                                registrationsWithMySubjectID = allRegistration
                                    .where(
                                        (x) => x.subject == widget.subject.id!)
                                    .toList();
                                loadingScreen = false;
                                removeRegistrationId = null;
                              });
                            },
                            items: registrationsWithMySubjectID.map((value) {
                              return DropdownMenuItem<String>(
                                value: "${value.id}",
                                child: Text(
                                    "${allStudents[value.student! - 1].name}"),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButton<String>(
                      hint: const Text("Add Student"),
                      value: addStudentId,
                      onChanged: (String? value) async {
                        setState(() {
                          loadingScreen = true;
                          addStudentId = value!;
                        });

                        await RegistrationEndPoints.makeRegistration(
                            addStudentId, widget.subject.id!);

                        await RegistrationEndPoints.getAllRegistrations()
                            .then((val) {
                          setState(() {
                            allRegistration = val;
                          });
                          Provider.of<ProviderProvider>(context, listen: false)
                              .updateRegistration(val);
                        });

                        setState(() {
                          registrationsWithMySubjectID = allRegistration
                              .where((x) => x.subject == widget.subject.id!)
                              .toList();
                          loadingScreen = false;
                          loadingScreen = false;
                          addStudentId = null;
                        });
                      },
                      items: allStudents.map((value) {
                        return DropdownMenuItem<String>(
                          value: "${value.id}",
                          child: Text("${value.name}"),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
