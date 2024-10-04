// empty_screen.dart
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Empty Screen"),
      ),
      body: Center(
        child: const Text(
          "This is an empty screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
