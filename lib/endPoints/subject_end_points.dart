import 'package:classroom_allocation/models/subject.dart';
import 'package:classroom_allocation/endPoints/rest.dart';

class SubjectEndPoints {
  static dynamic getAllSubjects() async {
    var response = await Rest.get("subjects/");

    List<Subject> allSubjectsList = response!["subjects"]
        .map((x) => Subject.fromJson(x))
        .toList()
        .cast<Subject>();

    return allSubjectsList;
  }

  static dynamic getSubject(subjectId) async {
    final subject = await Rest.get("subjects/$subjectId");
    return subject;
  }
}
