import 'package:flutter/material.dart';

class NewScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const NewScaffold({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          title == "AllSubjectsScreen"
              ? const SizedBox.shrink()
              : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/AllSubjectsScreen");
                  },
                  child: const Text("all Subjects")),
          title == "AllClassroomsScreen"
              ? const SizedBox.shrink()
              : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/AllClassroomsScreen");
                  },
                  child: const Text("all  Classes ")),
          title == "AllStudentsScreen"
              ? const SizedBox.shrink()
              : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/AllStudentsScreen");
                  },
                  child: const Text("all Students")),
        ],
      ),
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
