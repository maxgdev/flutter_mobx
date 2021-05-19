import 'package:flutter/material.dart';
import './data/weather_repository.dart';
import './pages/weather_search_page.dart';
import './state/weather_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Provider(
        create: (_) => WeatherStore(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
