import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Магазин Все для бані'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Ласкаво просимо!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 24, 149, 233),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(255, 245, 180, 42),
              ),
            ),
            child: Text(
              'Спеціальна пропозиція',
              style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 168, 12, 199),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
