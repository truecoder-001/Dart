import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  bool isOn = false;
  bool isChecked = false;
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "This is a simple Text Widget",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 195, 184, 187),
                size: 40,
              ),
              Image.network(
                "https://images.pexels.com/photos/28077813/pexels-photo-28077813.jpeg",
                height: 200,
                width: 200,
              ),
              Image.asset(
                "images/cat.jpg",
                height: 200,
                width: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Button Pressed");
                },
                child: Text("Elevated Button"),
              ),
              TextButton(
                onPressed: () {
                  print("Text Button Pressed");
                },
                child: Text("Text Button"),
              ),
              OutlinedButton(
                onPressed: () {
                  print("OutLined Button Pressed");
                },
                child: Text("OutLined Button"),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/cat.jpg"),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Flutter Developer'),
                  subtitle: Text('Visible Widgets Tutorial'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Switch(
                value: isOn,
                onChanged: (value) {
                  setState(() {
                    isOn = value;
                  });
                },
              ),
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(
                    () {
                      isChecked = value!;
                    },
                  );
                },
              ),
              Slider(
                value: sliderValue,
                min: 0,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
