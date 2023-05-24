import 'dart:io';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int red = 5;
  int blue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
            flex: red.toInt(),
            child: InkWell(
              onTap: () {
                setState(() {
                  if (red > 9) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: const Text(
                              """Red has won!\nDo you want to play new game?"""),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  exit(0);
                                },
                                child: const Text("No")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    red = 5;
                                    blue = 5;
                                  });
                                },
                                child: const Text("Yes")),
                          ]),
                    );
                  }
                  red += 1;
                  blue -= 1;
                 
                });
              },
              child: Container(
                color: Colors.red,
              ),
            )),
        Expanded(
            flex: blue.toInt(),
            child: InkWell(
              onTap: () {
                setState(() {
                  if (blue > 9) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: const Text(
                              """Blue has won!\nDo you want to play new game?"""),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  exit(0);
                                },
                                child: const Text("No")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    red = 5;
                                    blue = 5;
                                  });
                                },
                                child: const Text("Yes")),
                          ]),
                    );
                  }
                  red -= 1;
                  blue += 1;
                  
                });
              },
              child: Container(
                color: Colors.blue,
              ),
            )),
      ],
    )));
  }
}
