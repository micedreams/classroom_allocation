import 'package:classroom_allocation/all_classrooms.dart';
import 'package:classroom_allocation/all_students.dart';
import 'package:classroom_allocation/all_subjects.dart';
import 'package:classroom_allocation/endPoints/classroom_end_points.dart';
import 'package:classroom_allocation/endPoints/registration_end_points.dart';
import 'package:classroom_allocation/endPoints/student_end_points.dart';
import 'package:classroom_allocation/endPoints/subject_end_points.dart';
import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/models/registration.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:classroom_allocation/provider_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  List<Student> allStudents = [];
  List<Subject> allSubjects = [];
  List<Classroom> allClassrooms = [];
  List<Registration> allRegistration = [];
  await StudentEndPoints.getAllStudents().then((val) {
    allStudents = val;
  });

  await SubjectEndPoints.getAllSubjects().then((val) {
    allSubjects = val;
  });

  await ClassroomEndPoints.getAllClassrooms().then((val) {
    allClassrooms = val;
  });

  await RegistrationEndPoints.getAllRegistrations().then((val) {
    allRegistration = val;
  });

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ProviderProvider(
                allClassrooms, allStudents, allSubjects, allRegistration))
      ],
      child:
          (allSubjects.isEmpty && allStudents.isEmpty && allClassrooms.isEmpty)
              ? LoadingScreen.wheel()
              : const MyApp(),
    ),
  );
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
      home: const AllClassroomsScreen(),
    );
  }
}
