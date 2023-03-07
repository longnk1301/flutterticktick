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
    return ReorderableListView(
      onReorder: (int oldIndex, int newIndex) {
        if (newIndex > oldIndex) {
          newIndex -= 1;
        }

        final item = widget.categoryCollection.categories.removeAt(oldIndex);
        setState(() {
          widget.categoryCollection.categories.insert(newIndex, item);
        });
      },
      children: widget.categoryCollection.categories
          .map(
            (category) => ListTile(
              key: UniqueKey(),
              tileColor: Colors.grey[800],
              title: Row(
                children: [
                  category.icon,
                  const SizedBox(width: 10),
                  Text(category.name),
                ],
              ),
              leading: Container(
                decoration: const BoxDecoration(
                    color: Colors.blueAccent, shape: BoxShape.circle),
                child: const Icon(Icons.check),
              ),
              trailing: const Icon(Icons.reorder),
            ),
          )
          .toList(),
    );
  }
}
