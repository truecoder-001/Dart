import 'package:flutter/material.dart';
import 'model/item.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  final List<Item> items = [
    Item('Microsoft', 'Word'),
    Item('Microsoft', 'Paint'),
    Item('Adobe', 'Photoshop'),
    Item('Google', 'Docs'),
    Item('Sun Micro System', 'Open Office'),
    Item('Apple', 'Pages'),
    Item('King Soft', 'Wps Office'),
    Item('Microsoft', 'VsCode'),
    Item('Apple', 'Quick Time')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.label),
          title: Text(items[index].title),
          subtitle: Text(items[index].subtitle),
        );
      },
    );
  }
}
