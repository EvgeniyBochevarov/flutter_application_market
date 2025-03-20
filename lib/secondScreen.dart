import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Магазин Все для бані'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Банні віники з карпатської ялиці – це прекрасний спосіб посилити ефект в лазні та отримати максимальну користь для здоров'я. Вони мають приємний аромат і м'які голочки, які не травмують шкіру.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              child: Image.asset(
                'assets/jpg/pihtavenik.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Flexible(
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Тільки зараз ціна 100 грн.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),

          //SizedBox(height: 10),
          Flexible(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },

              child: Text('Товари'),
            ),
          ),
        ],
      ),
    );
  }
}
