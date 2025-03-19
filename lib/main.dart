import 'package:flutter/material.dart';
import 'package:flutter_application_market/firstScreen.dart';
import 'package:flutter_application_market/secondScreen.dart';
import 'package:flutter_application_market/thirdScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Магазин Все для бані',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}
