import 'package:flutter/material.dart';


class AllClassroomsScreen extends StatefulWidget {
  static const routeName = '/AllClassroomsScreen';

  const AllClassroomsScreen({Key? key}) : super(key: key);

  @override
  State<AllClassroomsScreen> createState() => _AllClassroomsScreenState();
}

class _AllClassroomsScreenState extends State<AllClassroomsScreen> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AllClassroomsScreen"),
      ),
      body: Text("AllClassroomsScreen"),
    );
  }
}
