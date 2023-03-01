import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(color: Colors.white),
            ))
      ]),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              'data',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'data',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
