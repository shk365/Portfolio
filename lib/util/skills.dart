import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  Skills({super.key});

  final List skillList = [
    ['images/python.png','Python'],
    ['images/java.png','Java'],
    ['images/cpp.png','C++'],
    ['images/mysql.png','MySQL'],
    ['images/flutter.png','Flutter'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Skills',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 30,
          ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('images/python.png', fit: BoxFit.contain)),
                    Expanded(child: Image.asset('images/java.png', fit: BoxFit.contain)),
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('images/mysql.png', fit: BoxFit.contain)),
                    Expanded(child: Image.asset('images/flutter.png', fit: BoxFit.contain)),
                  ]
                ),
              ),
            ), 
        ],
      ),
    );
  }
}
