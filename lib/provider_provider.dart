import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProviderProvider with ChangeNotifier {
  List<Student>? allStudents;
  List<Classroom>? allClassrooms;
  List<Subject>? allSubjects;
 ProviderProvider(this.allClassrooms, this.allStudents,  this.allSubjects);

  void updateWith(List<Student> updatedStudents,
      List<Classroom> updatedClassrooms, List<Subject> updatedSubjects) {
    allClassrooms = updatedClassrooms;
    allStudents = updatedStudents;
    allSubjects = updatedSubjects;
    notifyListeners();
  }
}

//List<Student> allStudents = context.select((ProviderProvider p) => p.allStudents!);
//List<Subject> allSubjects = context.select((ProviderProvider p) => p.allSubjects!);
//List<Classroom> allClassrooms = context.select((ProviderProvider p) => p.allClassrooms!);

