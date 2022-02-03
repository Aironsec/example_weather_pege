// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherPage());
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              'Weather Forecast',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: _body(),
      ),
    );
  }
}

SingleChildScrollView _body() {
  return SingleChildScrollView(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        _searchCity(),
        _cityName(),
        const SizedBox(height: 48),
        _currentWeather(),
        const SizedBox(height: 48),
        _propirtiesWeather(),
        const SizedBox(height: 48),
        _futureWeather(),
      ],
    ),
  );
}

TextField _searchCity() {
  return const TextField(
    decoration: InputDecoration(
      icon: Icon(
        Icons.search,
        size: 30,
        color: Colors.white70,
      ),
      labelText: 'Enter City Name',
      labelStyle: TextStyle(
        color: Colors.white70,
      ),
      border: InputBorder.none,
    ),
    style: TextStyle(
      color: Colors.white70,
      fontSize: 20,
    ),
  );
}

Column _cityName() {
  return Column(
    children: const [
      Text(
        'Obninsk, RU',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 30,
        ),
      ),
      SizedBox(height: 8),
      Text(
        'Friday, Mar 20, 2022',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 15,
        ),
      ),
    ],
  );
}

Row _currentWeather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.wb_sunny, color: Colors.white, size: 60),
      const SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            '14 °C',
            style: TextStyle(fontSize: 50, color: Colors.white70),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(fontSize: 18, color: Colors.white70),
          )
        ],
      )
    ],
  );
}

Row _propirtiesWeather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: const [
          Icon(Icons.air, color: Colors.white, size: 30),
          Text(
            '3',
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          Text(
            'm/s',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
      Column(
        children: const [
          Icon(Icons.air, color: Colors.white, size: 30),
          Text(
            '10',
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          Text(
            'm/s',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
      Column(
        children: const [
          Icon(Icons.air, color: Colors.white, size: 30),
          Text(
            '1',
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          Text(
            'm/s',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    ],
  );
}

Column _futureWeather() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        '7-DAY WEATHER FORECST',
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
      SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _listItem(),
          ],
        ),
      ),
    ],
  );
}

Container _listItem() {
  return Container(
    margin: const EdgeInsets.all(8.0),
    width: 150,
    color: Colors.red[200],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Friday',
          style: TextStyle(color: Colors.white70, fontSize: 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '14 °C',
              style: TextStyle(color: Colors.white70, fontSize: 30),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.wb_sunny, color: Colors.white, size: 50),
          ],
        ),
      ],
    ),
  );
}
