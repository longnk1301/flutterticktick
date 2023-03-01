import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () {},
            child: const Text('Edit', style: TextStyle(color: Colors.white)))
      ]),
      body: Container(child: const Text('data')),
    );
  }
}
