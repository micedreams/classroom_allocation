import 'package:classroom_allocation/endPoints/classroom_end_points.dart';
import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/view_classroom.dart';
import 'package:flutter/material.dart';

class AllClassroomsScreen extends StatefulWidget {
  static const routeName = '/AllClassroomsScreen';

  const AllClassroomsScreen({Key? key}) : super(key: key);

  @override
  State<AllClassroomsScreen> createState() => _AllClassroomsScreenState();
}

class _AllClassroomsScreenState extends State<AllClassroomsScreen> {
  List<Classroom> allClassrooms = [];
  @override
  void initState() {
    getClassrooms();
    super.initState();
  }

  void getClassrooms() async {
    var allClassroomsList = await ClassroomEndPoints.getAllClassrooms();
    setState(() {
      allClassrooms = allClassroomsList;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AllClassroomsScreen"),
      ),
      body: ListView(
        children: allClassrooms.map((e) {
          return ElevatedButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewClassRoomScreen(classRoom: e),
                  ),
                );
              },
              child: Text(e.name!));
        }).toList(),
      ),
    );
  }
}
