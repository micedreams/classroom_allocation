import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/student.dart';
import 'package:classroom_allocation/provider_provider.dart';
import 'package:classroom_allocation/view_student.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class AllStudentsScreen extends StatefulWidget {
  static const routeName = '/AllStudentsScreen';

  const AllStudentsScreen({Key? key}) : super(key: key);

  @override
  State<AllStudentsScreen> createState() => _AllStudentsScreenState();
}

class _AllStudentsScreenState extends State<AllStudentsScreen> {
  @override
  Widget build(BuildContext context) {
    List<Student> allStudents =
        context.select((ProviderProvider p) => p.allStudents!);
    return Scaffold(
      appBar: AppBar(
        title: Text("AllStudentsScreen"),
      ),
      body: (allStudents.isEmpty)
          ? LoadingScreen.wheel()
          : ListView(
              children: allStudents.map((e) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewStudentScreen(student: e),
                        ),
                      );
                    },
                    child: Text(e.name!));
              }).toList(),
            ),
    );
  }
}
