import 'package:flutter/material.dart';

class InteractiveList extends StatefulWidget {
  const InteractiveList({super.key});

  @override
  State<InteractiveList> createState() => _InteractiveListState();
}

class _InteractiveListState extends State<InteractiveList> {
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Item $index dismissed")));
            },
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text('${items[index]}'),
            ),
          );
        });
  }
}
