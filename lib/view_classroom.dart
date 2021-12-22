import 'package:classroom_allocation/models/classroom.dart';
import 'package:flutter/material.dart';


class ViewClassRoomScreen extends StatefulWidget {
  static const routeName = '/ViewClassroomScreen';
  final Classroom classRoom;

  const ViewClassRoomScreen({Key? key, required this.classRoom})
      : super(key: key);

  @override
  State<ViewClassRoomScreen> createState() => _ViewClassRoomScreenState();
}

class _ViewClassRoomScreenState extends State<ViewClassRoomScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.classRoom);
    return Scaffold(
      appBar: AppBar(
        title: Text("ClassroomScreen"),
      ),
      body: ListView(
        children: [
          Text("Name:${widget.classRoom.name!}"),
          Text("layout:${widget.classRoom.layout!}"),
          Text("size:${widget.classRoom.size!}"),
          Text("subject:${widget.classRoom.subject ?? "Not Assigned"}"),
        ],
      ),
    );
  }
}
