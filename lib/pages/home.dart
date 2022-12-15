import 'dart:io';
import 'package:flutter/material.dart';
import 'package:portfolio/util/projects.dart';
import 'package:portfolio/util/skills.dart';
import 'package:portfolio/util/timeline.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color.fromARGB(255, 53, 117, 236);
    return Scaffold(
      body:
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
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 30,
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
                          onPressed: () => launchUrlString('https://github.com/shk365'),
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
