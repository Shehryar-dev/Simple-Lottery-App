import 'package:flutter/material.dart';
import 'dart:math';

class LOTTERY extends StatefulWidget {
  const LOTTERY({super.key});

  @override
  State<LOTTERY> createState() => _LOTTERYState();
}

class _LOTTERYState extends State<LOTTERY> {
  Random random = Random();
  int value = 0;
  int win = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lottery App',
          style: TextStyle(
            fontFamily: 'Rubik med',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor:
          value == win ? Colors.greenAccent.shade400 : Colors.blue.shade50,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: value == win
                  ? const Image(
                      image: AssetImage('assets/Icon1.png'),
                      width: 150,
                    )
                  : const Image(
                      image: AssetImage('assets/Icon.png'),
                      width: 150,
                    ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                'Lottery Winning Number is: $win',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: value == win ? Colors.white : Colors.black,
                    fontFamily: 'Rubik med'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: value == win
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.white,
                            size: 45,
                          ),
                          Text(
                            'Congratulation You Have Won The Lottery,\n'
                            'You Number is: $value',
                            style: TextStyle(
                                fontFamily: 'Rubik reg',
                                fontSize: 17,
                                color:
                                    value == win ? Colors.white : Colors.black),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 45,
                          ),
                          Text(
                            'Better Luck next time, your num is: $value,\n Plz try again ',
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value = random.nextInt(10);
            debugPrint(value.toString());
          });
        },
        backgroundColor: Colors.blue.shade900,
        shape: const CircleBorder(),
        splashColor: Colors.blue.shade700,
        child: value == win
            ? const Icon(
                Icons.done_sharp,
                size: 30,
                color: Colors.white,
              )
            : const Icon(
                Icons.refresh,
                size: 30,
                color: Colors.white,
              ),
      ),
    );
  }
}
