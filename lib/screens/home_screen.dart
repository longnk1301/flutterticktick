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
            child: Container(
              color: Colors.orange,
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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [
          //     Icon(Icons.home),
          //     Text(
          //       'data',
          //       style: TextStyle(fontSize: 30),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
