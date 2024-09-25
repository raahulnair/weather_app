import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Info App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatefulWidget {
  @override
  _WeatherHomePageState createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  List<String> forecast = []; // Placeholder list to store forecast details

  // Simulate fetching the 7-day forecast
  void fetchWeatherForecast() {
    setState(() {
      // Example static data, you can replace this with API data
      forecast = [
        'Day 1: Sunny, 75°F',
        'Day 2: Cloudy, 70°F',
        'Day 3: Rainy, 68°F',
        'Day 4: Sunny, 80°F',
        'Day 5: Windy, 72°F',
        'Day 6: Thunderstorms, 65°F',
        'Day 7: Partly Cloudy, 74°F',
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info App'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: fetchWeatherForecast,
            child: Text('Get 7-Day Forecast'),
          ),
          SizedBox(height: 20),
          forecast.isEmpty
              ? Text('No forecast available')
              : Expanded(
                  child: ListView.builder(
                    itemCount: forecast.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(forecast[index]),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
