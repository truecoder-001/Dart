import 'package:flutter/material.dart';


List<String> fruits = [
  'Apple',
  'Orange',
  'Banana',
  'Plum',
  'Apricot',
  'Kiwi',
  'PineApple',
  'Mango',
  'Grape',
  'Strawberry',
  'Fig',
  'Litchi',
  'Papaya'
];


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<DropdownMenuItem<String>> getFruitsDropdown()
  {
    List<DropdownMenuItem<String>> newMenuItem = [];
    for(String fruit in fruits)
      {
        var menuItem = DropdownMenuItem(child: Text(fruit),value: fruit,);
        newMenuItem.add(menuItem);
      }

    return newMenuItem;
  }

String selectedFruit = 'Apple';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                DropdownButton<String>(
                  value: selectedFruit,
                 items: getFruitsDropdown(), onChanged: (value){
                  setState(() {
                    selectedFruit = value!;
                    print(selectedFruit);
                  });

                })
          ],
        ),
      ),
    );
  }
}
