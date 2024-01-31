// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:f_boot1/page2/button_text.dart';
import 'package:flutter/material.dart';

class DemoTwoPage extends StatefulWidget {
  const DemoTwoPage({super.key});

  @override
  State<DemoTwoPage> createState() => _DemoTwoPageState();
}

class _DemoTwoPageState extends State<DemoTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "images/lake.png",
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          secondRow(),
          SizedBox(
            height: 20,
          ),
          Button_Text(),
          TextSection(
            description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                'Bernese Alps. Situated 1,578 meters above sea level, it '
                'is one of the larger Alpine Lakes. A gondola ride from '
                'Kandersteg, followed by a half-hour walk through pastures '
                'and pine forest, leads you to the lake, which warms to 20 '
                'degrees Celsius in the summer. Activities enjoyed here '
                'include rowing, and riding the summer toboggan run.',
          )
        ],
      ),
    );
  }

  Widget secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Oeschinen Lake Campground",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            Text("Kandersteg Switzerland",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ))
          ],
        ),
        Icon(
          Icons.star,
          color: Colors.red,
          size: 22,
        ),
        Text("41",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            )),
      ],
    );
  }
}

//Text Section

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
