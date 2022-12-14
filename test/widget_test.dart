// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
/*
SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 450,
                width: 700,
                color: Colors.amberAccent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset('images/project.png', fit: BoxFit.fill,),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 450,
                width: 700,
                color: Colors.blue,
                child: Image.asset('images/project1.png', fit: BoxFit.fill,),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 450,
                width: 700,
                color: Colors.green,
                child: Image.asset('images/project2.png', fit: BoxFit.fill,),
              ),
            ],)
          )
          */

/*
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/util/projects.dart';
import 'package:portfolio/util/skills.dart';
import 'package:portfolio/util/timeline.dart';
import 'package:simple_icons/simple_icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    Color baseColor = const Color.fromARGB(255, 53, 117, 236);
    Color subColor = const Color.fromARGB(255, 38, 65, 120);
    Color BgColor = const Color.fromARGB(255, 157, 188, 245);
    return Scaffold(
      body:
          //controller: _scrollController,
          SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Portfolio',
                      style: TextStyle(color: baseColor, fontSize: 36),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: TextStyle(color: baseColor, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Timeline()),
                      );
                    },
                    child: Text(
                      'About',
                      style: TextStyle(color: baseColor, fontSize: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Projects',
                      style: TextStyle(color: baseColor, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Hi, I\'m Shweta',
                          style: TextStyle(fontSize: 70),
                        ),
                        Text(
                          'Computer Science Undergraduate',
                          style: TextStyle(fontSize: 35),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'A free time Software Developer, Student and tech enthusiast.',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8.0),
                    width: 740,
                    //height: 410,
                    child: Image.asset(
                      'assets/images/developer.png',
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Timeline(),
            const SizedBox(
              height: 30,
            ),
            Projects(),
            Skills(),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SimpleIcons.facebook)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SimpleIcons.github)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SimpleIcons.instagram)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(SimpleIcons.linkedin)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Copyright 2022')
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
*/