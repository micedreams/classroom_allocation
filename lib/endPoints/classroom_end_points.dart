import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/endPoints/rest.dart';

class ClassroomEndPoints {
  static dynamic getAllClassrooms() async {
    var response = await Rest.get("classrooms/");

    List<Classroom> allClassroomsList = response!["classrooms"]
        .map((x) => Classroom.fromJson(x))
        .toList()
        .cast<Classroom>();

    return allClassroomsList;
  }

  static dynamic getClassroom(classRoomId) async {
    var response = await Rest.get("classrooms/$classRoomId");
    final classroom = Classroom.fromJson(response);
    return classroom;
  }

  static dynamic assignReAssignSubject(int classRoomId, int subjectId) async {
    var params = {"subject": "$subjectId"};
    var classroom = await Rest.patch("classrooms/$classRoomId", params);
    return classroom;
  }
}
