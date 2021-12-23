import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/models/registration.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/models/subject.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProviderProvider with ChangeNotifier {
  List<Student>? allStudents;
  List<Classroom>? allClassrooms;
  List<Subject>? allSubjects;
  List<Registration>? allRegistration;
  ProviderProvider(this.allClassrooms, this.allStudents, this.allSubjects,
      this.allRegistration);

  void updateWith(
      List<Student> updatedStudents,
      List<Classroom> updatedClassrooms,
      List<Subject> updatedSubjects,
      List<Registration> updatedRegistrations) {
    allClassrooms = updatedClassrooms;
    allStudents = updatedStudents;
    allSubjects = updatedSubjects;
    allRegistration = updatedRegistrations;
    notifyListeners();
  }

  void updateStudent(
    List<Student> updatedStudents,
  ) {
    allStudents = updatedStudents;

    notifyListeners();
  }

  void updateClassroom(
    List<Classroom> updatedClassrooms,
  ) {
    allClassrooms = updatedClassrooms;

    notifyListeners();
  }

  void updateSubject(
    List<Subject> updatedSubjects,
  ) {
    allSubjects = updatedSubjects;
    notifyListeners();
  }

  void updateRegistration(List<Registration> updatedRegistrations) {
    allRegistration = updatedRegistrations;
    notifyListeners();
  }
}

//List<Student> allStudents = context.select((ProviderProvider p) => p.allStudents!);
//List<Subject> allSubjects = context.select((ProviderProvider p) => p.allSubjects!);
//List<Classroom> allClassrooms = context.select((ProviderProvider p) => p.allClassrooms!);
//List<Registration> allRegistration = context.select((ProviderProvider p) => p.allRegistration!);

