import 'package:flutter/material.dart';

import '../../models/category_collection.dart';

const LIST_VIEW_HEIGHT = 70.0;

class ListViewItems extends StatefulWidget {
  final CategoryCollection categoryCollection;

  const ListViewItems({super.key, required this.categoryCollection});

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.categoryCollection.categories.length * LIST_VIEW_HEIGHT,
      child: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }

          final item = widget.categoryCollection.removeItem(oldIndex);
          setState(() {
            widget.categoryCollection.insertItem(newIndex, item);
          });
        },
        children: widget.categoryCollection.categories
            .map(
              (category) => SizedBox(
                key: UniqueKey(),
                height: LIST_VIEW_HEIGHT,
                child: ListTile(
                  onTap: () {
                    setState(() {
                      category.toggleCheckbox();
                    });
                  },
                  tileColor: Colors.grey[800],
                  title: Row(
                    children: [
                      category.icon,
                      const SizedBox(width: 10),
                      Text(category.name),
                    ],
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                      color: category.isChecked
                          ? Colors.blueAccent
                          : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: category.isChecked
                              ? Colors.blueAccent
                              : Colors.grey),
                    ),
                    child: Icon(
                      Icons.check,
                      color: category.isChecked
                          ? Colors.white
                          : Colors.transparent,
                    ),
                  ),
                  trailing: const Icon(Icons.reorder),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
