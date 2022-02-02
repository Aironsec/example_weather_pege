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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _searchCity(),
              _cityName(),
              _currentWeather(),
              _propirtiesWeather(),
              _futureWeather(),
            ],
          ),
        ),
      ),
    );
  }
}

Padding _futureWeather() {
  return Padding(
    padding: const EdgeInsets.only(top: 48),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          '7-DAY WEATHER FORECST',
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
      ],
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

Padding _currentWeather() {
  return Padding(
    padding: const EdgeInsets.only(top: 48, bottom: 48),
    child: Row(
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
    ),
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
            '',
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
