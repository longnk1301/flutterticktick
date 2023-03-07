import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common.widgets/category_icon.dart';
import 'category.dart';

class CategoryCollection {
  final List<Category> _categories = [
    Category(
        id: 'all',
        name: 'All',
        icon: CategoryIcon(
          bgColor: CupertinoColors.systemBlue,
          iconData: CupertinoIcons.calendar_today,
        )),
    Category(
        id: 'scheduled',
        name: 'Scheduled',
        icon: CategoryIcon(
          bgColor: CupertinoColors.systemRed,
          iconData: CupertinoIcons.mail,
        )),
    Category(
        id: 'today',
        name: 'Today',
        icon: CategoryIcon(
          bgColor: CupertinoColors.systemGrey,
          iconData: Icons.calendar_view_week,
        )),
    Category(
        id: 'flagged',
        name: 'Flagged',
        icon: CategoryIcon(
          bgColor: CupertinoColors.activeOrange,
          iconData: CupertinoIcons.flag_fill,
        )),
  ];
  //Public List: can remove, access, insert
  // List<Category> get categories => _categories; commented

  //UnmodifiedList: can't remove, insert in the outside
  UnmodifiableListView<Category> get categories =>
      UnmodifiableListView(_categories);

  //So, how to remove and insert in the outside?
  Category removeItem(index) {
    return _categories.removeAt((index));
  }

  void insertItem(index, item) {
    _categories.insert(index, item);
  }

  List<Category> get selectedCategories {
    return _categories.where((category) => category.isChecked).toList();
  }
}
