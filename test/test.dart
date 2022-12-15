import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Projects extends StatelessWidget {
  Projects({super.key});

    final List link = [
    'https://todo1365.netlify.app/#/',
    'https://favorite-word.netlify.app/#/',
    'https://wordpair-generator.netlify.app/#/'
  ];
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Projects',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            items: [
              InkWell(
                onTap: () => launchUrlString('https://todo1365.netlify.app/#/'),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: const Image(image: AssetImage('images/project.png')),
                ),
              ),
              InkWell(
                onTap: () => launchUrlString('https://todo1365.netlify.app/#/'),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: const Image(image: AssetImage('images/project1.png')),
                ),
              ),
              InkWell(
                onTap: () => launchUrlString('https://wordpair-generator.netlify.app/#/'),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: const Image(image: AssetImage('images/project2.png')),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 450.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
