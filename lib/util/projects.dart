import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Projects extends StatefulWidget {
  @override
  _Projects createState() => _Projects();
}

class _Projects extends State<Projects> {
  final List<String> images = [
    'images/to_do_project.png',
    'images/fav_word_project.png',
    'images/wordpair_generator_project.png',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Column(
      children: [
        const Text(
          'Projects',
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          constraints:
              const BoxConstraints(maxHeight: 500, maxWidth: double.infinity),
          child: Stack(children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 18 / 8,
                autoPlay: true,
              ),
            )
          ]),
        ),
      ],
    );
  }
}
