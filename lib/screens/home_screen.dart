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
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: [
                Container(color: Colors.orange),
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.green)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle),
                    label: const Text('Add Reminder'),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text('Add List'),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
