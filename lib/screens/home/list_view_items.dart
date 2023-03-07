import 'package:flutter/material.dart';

import '../../models/category_collection.dart';

class ListViewItems extends StatefulWidget {
  final CategoryCollection categoryCollection;

  const ListViewItems({super.key, required this.categoryCollection});

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: widget.categoryCollection.categories
            .map(
              (category) => Text('123'),
            )
            .toList());
  }
}
