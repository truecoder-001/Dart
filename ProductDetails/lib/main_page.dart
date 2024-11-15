import 'package:flutter/material.dart';
import 'package:flutter_application_3/products_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductsPage(),
      ],
    );
  }
}
