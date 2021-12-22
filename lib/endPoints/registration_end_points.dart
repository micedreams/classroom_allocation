import 'package:classroom_allocation/models/registration.dart';
import 'package:classroom_allocation/endPoints/rest.dart';

class RegistrationEndPoints {
  static dynamic getAllRegistrations() async {
    var response = await Rest.get("registration/");
    List<Registration> allRegistrationList = response!["registrations"]
        .map((x) => Registration.fromJson(x))
        .toList()
        .cast<Registration>();

    return allRegistrationList;
  }

  static dynamic getRegistration(registrationId) async {
    var response = await Rest.get("registration/$registrationId");
    final registration = Registration.fromJson(response);
    return registration;
  }

  static dynamic makeRegistration(studentId, subjectId) async {
    final registration = await Rest.post(
        "registration/", {"student": "$studentId", "subject": "$subjectId"});
    return registration;
  }

  static dynamic deleteRegistration(registrationId) async {
    var response = await Rest.delete("registration/$registrationId");
    final registration = Registration.fromJson(response);
    return registration;
  }
}
