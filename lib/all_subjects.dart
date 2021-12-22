import 'package:flutter/material.dart';

class AllSubjectsScreen extends StatefulWidget {
  static const routeName = '/AllSubjectsScreen';

  const AllSubjectsScreen({Key? key}) : super(key: key);

  @override
  State<AllSubjectsScreen> createState() => _AllSubjectsScreenState();
}

class _AllSubjectsScreenState extends State<AllSubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AllSubjectsScreen"),
        ),
        body: Text("AllSubjectsScreen"));
  }
}
