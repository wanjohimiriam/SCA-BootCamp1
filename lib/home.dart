// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        item1(),
        Picture(),
      ]),
    ));
  }

  Widget item1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text("StrawBerry Pavlova",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4, left: 10),
          child: Text(
            //after the Russian ballerine Anna Pavlova.Pavlova features a crisp crust and soft light inside topped with fruit and whipped cream
            "Pavlova is a meringue-based dessert named.",
            softWrap: false,
            maxLines: 3,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
        ),
        MiddleRow(),
        Row(
          children: [DuplicateCol(), DuplicateCol(), DuplicateCol()],
        )
      ],
    );
  }

  Widget DuplicateCol() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Column(children: [
        Icon(
          Icons.book,
          size: 12,
          color: Colors.orange,
        ),
        Text(
          "PREP",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "25 Min",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        )
      ]),
    );
  }

  Widget MiddleRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: [
          Row(
            children: [
              Text(
                "******",
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "170 Views",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget Picture() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        child: Image.asset("images/boot_img.png")),
    );
  }
}
