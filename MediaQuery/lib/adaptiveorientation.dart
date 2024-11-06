import 'package:flutter/material.dart';

class AdaptiveOrientation extends StatelessWidget {
  const AdaptiveOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitLayout();
        } else {
          return LandScapeLayout();
        }
      },
    );
  }
}

class LandScapeLayout extends StatelessWidget {
  const LandScapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Align(
        alignment: Alignment.center,
        child: Text('Landscape Layout'),
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Align(
        alignment: Alignment.center,
        child: Text('Portrait Layout'),
      ),
    );
  }
}
