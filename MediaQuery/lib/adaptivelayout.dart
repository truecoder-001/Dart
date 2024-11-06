import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth > 600) {
          return WideLaout();
        } else {
          return MobileLayout();
        }
      },
    );
  }
}

class WideLaout extends StatelessWidget {
  const WideLaout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: const Align(
        alignment: Alignment.center,
        child: Text('Wide Layout'),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: const Align(
        alignment: Alignment.center,
        child: Text('Mobile Layout'),
      ),
    );
  }
}
