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
    List<String> buttonsList = [
      "AllSubjectsScreen",
      "AllClassroomsScreen",
      "AllStudentsScreen"
    ];
    return Scaffold(
      bottomNavigationBar: ButtonBar(
          children: buttonsList.map(
        (e) {
          return title == e
              ? const SizedBox.shrink()
              : ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/$e");
                  },
                  child: Text(e));
        },
      ).toList()),
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
