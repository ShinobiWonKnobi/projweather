import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WeatherScreen(),
      ),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  final String cityName = "Chennai"; // Change this to your desired city
  final String temperature = "45°C"; // Change this to the current temperature

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade400, Colors.blue.shade900],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 70), // Adjust the space at the top
          Align(
            alignment: Alignment.topCenter,
            child: WeatherIcon(),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topCenter, // Align to the top
            child: WeatherTemperature(temperature: temperature),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.topCenter,
            child: WeatherCityName(cityName: cityName),
          ),
        ],
      ),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, 
      height: 160, 
      child: Image.asset(
        'assets/Suncloudangledrain.png',
        fit: BoxFit.cover, 
      ),
    );
  }
}
class WeatherTemperature extends StatelessWidget {
  final String temperature;

  WeatherTemperature({required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$temperature',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}

class WeatherCityName extends StatelessWidget {
  final String cityName;

  WeatherCityName({required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Currently in $cityName',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

