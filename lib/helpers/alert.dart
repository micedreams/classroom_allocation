import 'package:flutter/material.dart';

class Alert {
  static void alert(String content, context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            children: <Widget>[
              Center(
                child: Text(content),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Center(
                  child: Text(
                    "OK",
                  ),
                ),
              )
            ],
          );
        });
  }
}
