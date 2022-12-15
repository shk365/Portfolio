import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Timeline extends StatelessWidget {
  Timeline({super.key});

  Color baseColor = const Color.fromARGB(255, 53, 117, 236);
  Color subColor = const Color.fromARGB(255, 38, 65, 120);
  Color BgColor = const Color.fromARGB(255, 157, 188, 245);

  List info = [
    ['Sep 2020 - Present','Bachelor of Science', 'Major in Computer Science', 'GPA : 8.3'],
    ['Aug 2020','Central Board of Secondary Education', 'Class XII', 'Percentage : 93.2%'],
    ['Jun 2019', 'Central Board of Secondary Education', 'Class X', 'Percentage : 90.0%']
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const SizedBox(
                    height: 30,
                  ),
        Container(
          child: const Text(
            'About',
            style: TextStyle(fontSize: 40),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          child: FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
              itemCount: info.length,
              contentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: const EdgeInsets.all(20),
                  elevation: 8,
                  shadowColor: baseColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.calendar_month_rounded, color: baseColor,),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              info[index][0],
                              style: const TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        Text(
                          info[index][1],
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          info[index][2],
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          info[index][3],
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
