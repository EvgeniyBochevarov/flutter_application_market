import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  Row buildRow(String path, String text1, String text2) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(child: Image.asset(path, fit: BoxFit.cover)),
        ),
        SizedBox(width: 10),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Text(text1),
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            child: Text(text2, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }

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
              "ТОВАРИ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 58, 7, 240),
              ),
            ),
          ),
          SizedBox(height: 30),
          buildRow(
            'assets/jpg/med.jpg',
            'Мед для лазні "Квітковий"',
            '100 грн',
          ),
          SizedBox(height: 10),
          buildRow(
            'assets/jpg/kovsh.jpg',
            "Ківш для лазні з дерев'яною ручкою",
            '465 грн',
          ),
          SizedBox(height: 10),
          buildRow(
            'assets/jpg/shapka.jpg',
            "Шапка для бані «Патріотична», в’язана",
            '700 грн',
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Головна'),
          ),
        ],
      ),
    );
  }
}
