import 'package:flutter/material.dart';
import 'package:flutterticktick/models/category_collection.dart';
import 'package:flutterticktick/screens/home/footer.dart';
import 'package:flutterticktick/screens/home/list_view_items.dart';

import 'grid_view_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String layoutType = 'grid';

  CategoryCollection categoryCollection = CategoryCollection();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () {
              if (layoutType == 'grid') {
                setState(() {
                  layoutType = 'list';
                });
              } else {
                setState(() {
                  layoutType = 'grid';
                });
              }
            },
            child: Text(
              layoutType == 'grid' ? 'Edit' : 'Done',
              style: const TextStyle(color: Colors.white),
            ))
      ]),
      body: Column(
        children: [
          Expanded(
            child: layoutType == 'grid'
                ? GridViewItems(categoryCollection: categoryCollection)
                : ListViewItems(categoryCollection: categoryCollection),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
