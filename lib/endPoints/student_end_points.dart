import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/endPoints/rest.dart';

class StudentEndPoints {
  static dynamic getAllStudents() async {
    var response = await Rest.get("students/");

    List<Student> allStudentsList = response!["students"]
        .map((x) => Student.fromJson(x))
        .toList()
        .cast<Student>();

    return allStudentsList;
  }

  static dynamic getStudent(studentId) async {
    var response = await Rest.get("students/$studentId");
    final student = Student.fromJson(response);
    return student;
  }
}
