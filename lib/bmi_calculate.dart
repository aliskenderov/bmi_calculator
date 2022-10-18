import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_calculate/result_screen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  var newValue = 150.0;
  int weight = 60;
  int age = 25;
  Color secondColor = Colors.pinkAccent;

  Color maleColor = const Color.fromARGB(255, 27, 28, 48);
  Color femaleColor = const Color.fromARGB(255, 27, 28, 48);
  Color backgroundColor = const Color.fromARGB(255, 27, 28, 48);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131229),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        maleColor = secondColor;
                        femaleColor = backgroundColor;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: maleColor,
                      ),
                      padding: const EdgeInsets.all(20),
                      // width: 170,
                      // height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 120,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 38,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        femaleColor = secondColor;
                        maleColor = backgroundColor;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: femaleColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(20),
                      // width: 170,
                      // height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 120,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height,
                    color: const Color(0xFF1f1d35),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "HEIGHT",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              newValue.toStringAsFixed(0),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          min: 130,
                          max: 230,
                          thumbColor: Colors.pink,
                          activeColor: Colors.white,
                          inactiveColor: Colors.grey,
                          value: newValue.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              newValue = value;
                            
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFF1f1d35),
                        ),
                        width: 170,
                        height: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'WEIGHT',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Text(
                                  weight.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () => setState(() {
                                        weight--;
                                      }),
                                      child: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () => setState(() {
                                        weight++;
                                      }),
                                      child: const Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 36,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFF1f1d35),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'AGE',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Text(
                                  age.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () => setState(() {
                                        age--;
                                      }),
                                      child: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () => setState(() {
                                        age++;
                                      }),
                                      child: const Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      double answer = weight / pow(newValue / 100, 2);
                      String result = answer.toStringAsFixed(0);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                    result: result,
                                    resultText1: result,
                                  )));
                    },
                    child: GestureDetector(
                      onTap: () {
                        double answer = weight / pow(newValue / 100, 2);
                        String result = answer.toStringAsFixed(1);
                        String resultText = "";
                        if (answer <= 18.0) {
                          resultText = "UNDERWEIGHT";
                        } else if (answer <= 25.0) {
                          resultText = "NORMAL";
                        } else {
                          resultText = "OWERWEIGTH";
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                      result: result,
                                      resultText1: resultText,
                                    )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.pink,
                        ),
                        width: MediaQuery.of(context).size.height,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: const [
                            Text(
                              'CALCULATE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
