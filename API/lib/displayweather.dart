import 'package:flutter/material.dart';

class DisplayWeather extends StatefulWidget {
  DisplayWeather({this.weatherLocation});
  final weatherLocation;
  @override
  State<DisplayWeather> createState() => _DisplayWeatherState();
}

class _DisplayWeatherState extends State<DisplayWeather> {
  double temp = 0;
  String desc ='';
  String cityName = '';

  @override
  void initState() {
    super.initState();
    setData(widget.weatherLocation);
  }

  void setData(dynamic weatherData)
  {
    setState(() {
      temp = weatherData['main']['temp'];
      desc = weatherData['weather'][0]['description'];
      cityName = weatherData['name'];

    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text('City : $cityName',style: const TextStyle(
          fontFamily: 'Spartan MB',
          fontSize: 30.0,
        ),),
            Text('Description : $desc',style: const TextStyle(
              fontFamily: 'Spartan MB',
              fontSize: 30.0,
            ),),
            Text('Temperature : $temp °C',style: const TextStyle(
              fontFamily: 'Spartan MB',
              fontSize: 30.0,
            ),),
          ],
        ),
      ),
    );
  }
}
