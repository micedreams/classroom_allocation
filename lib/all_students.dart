import 'package:flutter/material.dart';


class AllStudentsScreen extends StatefulWidget {
  static const routeName = '/AllStudentsScreen';

  const AllStudentsScreen({Key? key}) : super(key: key);

  @override
  State<AllStudentsScreen> createState() => _AllStudentsScreenState();
}

class _AllStudentsScreenState extends State<AllStudentsScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AllStudentsScreen"),
      ),
      body: Text("AllStudentsScreen"),
    );
  }
}
