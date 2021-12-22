import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:classroom_allocation/rest.dart';
import 'dart:io' show Platform;

class GetEndPoints {
  static dynamic getAllClassrooms() async {
    var response = await Rest.get("classrooms/");

    List<Classroom> allClassroomsList = response!["classrooms"]
        .map((x) => Classroom.fromJson(x))
        .toList()
        .cast<Classroom>();

    return allClassroomsList;
  }

  static dynamic getAllSubjects() async {
    var response = await Rest.get("subjects/");

    List<Subject> allSubjectsList = response!["subjects"]
        .map((x) => Subject.fromJson(x))
        .toList()
        .cast<Subject>();

    return allSubjectsList;
  }

  static dynamic getAllStudents() async {
    var response = await Rest.get("students/");

    List<Student> allStudentsList = response!["students"]
        .map((x) => Student.fromJson(x))
        .toList()
        .cast<Student>();

    return allStudentsList;
  }
}
