import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  Row buildRow(String path, String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 10),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: 150,
            height: 120,
            child: Image.asset(path, fit: BoxFit.contain),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: 150,
            height: 120,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Align(child: Text(text1, textAlign: TextAlign.center)),
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            width: 150,
            height: 120,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),

            child: Align(
              child: Text(text2, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        SizedBox(width: 10),
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
          Flexible(
            child: buildRow(
              'assets/jpg/med.jpg',
              'Мед для лазні "Квітковий"',
              '100 грн',
            ),
          ),
          SizedBox(height: 10),
          Flexible(
            child: buildRow(
              'assets/jpg/kovsh.jpg',
              "Ківш для лазні з дерев'яною ручкою",
              '465 грн',
            ),
          ),
          SizedBox(height: 10),
          Flexible(
            child: buildRow(
              'assets/jpg/shapka.jpg',
              "Шапка для бані «Патріотична», в’язана",
              '700 грн',
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Назад'),
                ),
              ),

              Flexible(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Головна'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
