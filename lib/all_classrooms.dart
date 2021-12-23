import 'package:classroom_allocation/helpers/NewScaffold.dart';
import 'package:classroom_allocation/helpers/loading_screen.dart';
import 'package:classroom_allocation/models/classroom.dart';
import 'package:classroom_allocation/provider_provider.dart';
import 'package:classroom_allocation/view_classroom.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class AllClassroomsScreen extends StatefulWidget {
  static const routeName = '/AllClassroomsScreen';

  const AllClassroomsScreen({Key? key}) : super(key: key);

  @override
  State<AllClassroomsScreen> createState() => _AllClassroomsScreenState();
}

class _AllClassroomsScreenState extends State<AllClassroomsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Classroom> allClassrooms =
        context.select((ProviderProvider p) => p.allClassrooms!);
    return NewScaffold(
      title: "AllClassroomsScreen",
      body: (allClassrooms.isEmpty)
          ? LoadingScreen.wheel()
          : ListView(
              children: allClassrooms.map((e) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ViewClassRoomScreen(classRoom: e),
                        ),
                      );
                    },
                    child: Text(e.name!));
              }).toList(),
            ),
    );
  }
}
