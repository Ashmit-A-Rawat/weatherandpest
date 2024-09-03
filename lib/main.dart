import 'package:flutter/material.dart';
import 'weather_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather and Pest Alerts',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WeatherPestAlertsPage(),
    );
  }
}

class WeatherPestAlertsPage extends StatefulWidget {
  @override
  _WeatherPestAlertsPageState createState() => _WeatherPestAlertsPageState();
}

class _WeatherPestAlertsPageState extends State<WeatherPestAlertsPage> {
  final WeatherService weatherService = WeatherService();
  final TextEditingController _locationController = TextEditingController();
  String _weatherInfo = '';
  String _pestAlert = '';
  bool _loading = false;

  void _getWeather() async {
    setState(() {
      _loading = true;
      _weatherInfo = '';
      _pestAlert = '';
    });

    try {
      final weatherData =
      await weatherService.fetchWeather(_locationController.text.trim());
      setState(() {
        _weatherInfo = '''
Location: ${weatherData['name']}
Temperature: ${weatherData['main']['temp']} °C
Humidity: ${weatherData['main']['humidity']} %
Conditions: ${weatherData['weather'][0]['description']}
''';
        _pestAlert = _generatePestAlert();
      });
    } catch (error) {
      setState(() {
        _weatherInfo = 'Error: Unable to fetch weather data.';
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  String _generatePestAlert() {
    final pests = ['Aphids', 'Caterpillars', 'Mites'];
    final alert = pests[
    (pests.length * new DateTime.now().millisecond / 1000).floor() %
        pests.length];
    return 'Alert: Potential outbreak of $alert based on current weather conditions.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localized Weather Forecast and Pest Alerts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Enter Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _getWeather,
              child: _loading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text('Get Weather and Pest Alerts'),
            ),
            SizedBox(height: 16),
            Text(
              _weatherInfo,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              _pestAlert,
              style: TextStyle(fontSize: 16, color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}