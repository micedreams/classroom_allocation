import 'package:classroom_allocation/end_points.dart';
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
  Classroom? classRoom;
  int? subjectId;
  @override
  void initState() {
    setState(() {
      classRoom = widget.classRoom;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.classRoom);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
          Text("Name:${classRoom!.name!}"),
          Text("layout:${classRoom!.layout!}"),
          Text("size:${classRoom!.size!}"),
          Row(
            children: [
              Text("Subject: "),
              DropdownButton<int>(
                hint: Text(classRoom!.subject == null
                    ? "Assign Subject"
                    : "ReAssign Subject"),
                value: classRoom!.subject,
                onChanged: (int? value) async {
                  setState(() {
                    subjectId = value!;
                  });
                  final response = await EndPoints.assignReAssignSubject(
                      classRoom!.id!, subjectId!);

                  setState(() {
                    classRoom = Classroom.fromJson(response);
                  });
                },
                items: <int>[1, 2, 3, 4, 5, 6].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
