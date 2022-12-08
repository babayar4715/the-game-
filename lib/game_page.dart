import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int rightbox = 4;

  int centerbox = 2;

  int leftbox = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'The game',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            fontFamily: 'RubikDistressed',
          ),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        leftbox = Random().nextInt(4);

                        print(' laft box => $leftbox');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/fruit${leftbox == 0 ? leftbox = 1 : leftbox}.jpg',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        centerbox = Random().nextInt(5);
                        print('centerbox=> $centerbox');
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/fruit${centerbox == 0 ? centerbox = 1 : centerbox}.jpg',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        rightbox = Random().nextInt(5);
                        print('rightbox => $rightbox');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/fruit${rightbox == 0 ? rightbox = 1 : rightbox}.jpg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                setState(() {
                  leftbox = Random().nextInt(5);
                  rightbox = Random().nextInt(5);
                  centerbox = Random().nextInt(5);
                });
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.autorenew_rounded,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
