import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterticktick/common.widgets/category_icon.dart';

import '../models/category.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Category> categories = [
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
                childAspectRatio: 8 / 8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(10),
                children: categories
                    .map((category) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0XFF1A191D),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [category.icon, Text('0')],
                                  ),
                                  Text(category.name),
                                ]),
                          ),
                        ))
                    .toList()),
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
