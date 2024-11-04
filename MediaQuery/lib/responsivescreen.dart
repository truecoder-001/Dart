import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting screen width, height, and orientation
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    print(screenWidth);
    print(screenHeight);
    print(orientation);

    return Center(
        // child: Container(
        //   width: screenWidth * 0.8,
        //   height: orientation == Orientation.portrait
        //       ? screenHeight * 0.3
        //       : screenHeight * 0.5,
        //   color: Colors.blue,
        //   alignment: Alignment.center,
        //   child: Text(
        //     "Screen width: ${screenWidth.toStringAsFixed(2)}\n"
        //     "Orientation: ${orientation == Orientation.portrait ? 'Portrait' : 'Landscape'}\n"
        //     "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}\n"
        //     "Padding (top): ${MediaQuery.of(context).padding.top}",
        //     style: const TextStyle(color: Colors.white, fontSize: 18),
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        );
  }
}
