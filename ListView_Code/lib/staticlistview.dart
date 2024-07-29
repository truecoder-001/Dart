import 'package:flutter/material.dart';

class StaticListView extends StatelessWidget {
  const StaticListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Container(
          color: Colors.amber[600],
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Item 1',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
          subtitle: Text('Open The Map'),
          trailing: Icon(Icons.arrow_forward),
        ),
        const ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
          subtitle: Text('View Your Photo'),
          trailing: Icon(Icons.arrow_forward),
        ),
        Container(
          color: Colors.lightBlue[100],
          padding: const EdgeInsets.all(16.0),
          child: const Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Item With Icon',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        const ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('Make a Call'),
          trailing: Icon(Icons.arrow_forward),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          height: 100,
          child: Image.network(
            'https://images.pexels.com/photos/17692060/pexels-photo-17692060/free-photo-of-close-up-of-kitten.jpeg',
          ),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          subtitle: Text('Adjust your preferences'),
          trailing: Icon(Icons.arrow_forward),
        ),
        Container(
          color: Colors.green[200],
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Item With Column',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Secondary Text',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
