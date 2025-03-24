import 'package:flutter/material.dart';

class BuildRowLines extends StatelessWidget {
  final String path;
  final String text1;
  final String text2;
  const BuildRowLines({
    super.key,
    required this.path,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
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
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Магазин Все для бані'),
      ),
      body: ListView(
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
          const SizedBox(height: 30),
          //Flexible(
          // child:
          BuildRowLines(
            path: 'assets/jpg/med.jpg',
            text1: 'Мед для лазні "Квітковий"',
            text2: '100 грн',
          ),
          //),
          const SizedBox(height: 10),
          //Flexible(
          //  child:
          BuildRowLines(
            path: 'assets/jpg/kovsh.jpg',
            text1: "Ківш для лазні з дерев'яною ручкою",
            text2: '465 грн',
          ),
          //),
          const SizedBox(height: 10),
          //Flexible(
          //  child:
          BuildRowLines(
            path: 'assets/jpg/shapka.jpg',
            text1: "Шапка для бані «Патріотична», в’язана",
            text2: '700 грн',
          ),
          // ),
          const SizedBox(height: 10),
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
