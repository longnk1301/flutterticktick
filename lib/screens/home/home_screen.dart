import 'package:flutter/material.dart';
import 'package:flutterticktick/models/category_collection.dart';
import 'package:flutterticktick/screens/home/footer.dart';

import 'grid_view_items.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  CategoryCollection categoryCollection = CategoryCollection();

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
            child: GridViewItems(categoryCollection: categoryCollection),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
