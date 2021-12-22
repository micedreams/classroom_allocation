import 'package:flutter/material.dart';

class LoadingScreen {
  static Container wheel() {
    return Container(
      alignment: Alignment.center,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
