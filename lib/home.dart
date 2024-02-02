// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:f_boot1/page2/text_section.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
//
    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );
    final titleText = Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("StrawBerry Pavlova", style: descTextStyle));
    final subTitle = TextSection(
        description: 'Pavlova is meringue-based'
            'desert named after russian'
            'ballerine Anna Pavlova'
            'Palvova Features a crisp crust and'
            'soft light inside topped with fruit'
            'and whipped cream');

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: leftColumn,
                ),
                Picture(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Picture() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Expanded(
        child: Image.asset(
          "images/berry_boot.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

  // Widget item1() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: EdgeInsets.only(left: 10),
  //         child: Text("StrawBerry Pavlova",
  //             style: TextStyle(
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 18)),
  //       ),
  //       TextSection(
  //           description: 'Pavlova is meringue-based'
  //               'desert named after russian'
  //               'ballerine Anna Pavlova'
  //               'Palvova Features a crisp crust and'
  //               'soft light inside topped with fruit'
  //               'and whipped cream'),
  //       MiddleRow(),
  //       // Row(
  //       //   children: [DuplicateCol(), DuplicateCol(), DuplicateCol()],
  //       // )
  //     ],
  //   );
  // }

  // Widget DuplicateCol() {
  //   return Padding(
  //     padding: EdgeInsets.only(top: 10, left: 20),
  //     child: Column(children: [
  //       Icon(
  //         Icons.book,
  //         size: 12,
  //         color: Colors.orange,
  //       ),
  //       Text(
  //         "PREP",
  //         style: TextStyle(
  //           letterSpacing: 2,
  //           fontSize: 16,
  //           color: Colors.black,
  //           fontWeight: FontWeight.w400,
  //         ),
  //       ),
  //       Text(
  //         "25 Min",
  //         style: TextStyle(
  //           fontSize: 16,
  //           color: Colors.black,
  //         ),
  //       )
  //     ]),
  //   );
  // }

  

  // Widget MiddleRow() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 10, top: 10),
  //     child: Row(
  //       children: [
  //         Row(
  //           children: [
  //             Row(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 Icon(Icons.star, color: Colors.green[500]),
  //                 Icon(Icons.star, color: Colors.green[500]),
  //                 Icon(Icons.star, color: Colors.green[500]),
  //                 const Icon(Icons.star, color: Colors.black),
  //                 const Icon(Icons.star, color: Colors.black),
  //               ],
  //             )
  //           ],
  //         ),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         Text(
  //           "170 Views",
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

