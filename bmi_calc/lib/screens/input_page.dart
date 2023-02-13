import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/gender_card.dart';
import '../components/rounded_button.dart';
import '../constant.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  double height = 180;
  final int weight = 0;
  final int age = 0;
  // TextEditingController weightText = TextEditingController();
  // TextEditingController ageText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: const GenderCard(
                      icon: FontAwesomeIcons.mars, title: "MALE"),
                  onTap: () {},
                ),
                GestureDetector(
                    onTap: () {},
                    child: const GenderCard(
                        icon: FontAwesomeIcons.venus, title: "FEMALE")),
              ],
            ),
          ),
          Container(
            child: ReusableCard(
              height: 165,
              width: 150,
              color: kInActiveCardColor,
              click: () {},
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "HEIGHT",
                    style: kGenderCardTitleTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toStringAsFixed(0),
                        style: kLargeNumberTextStyle,
                      ),
                      const Text(
                        "cm",
                        style: kMediumTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.blueGrey,
                      thumbColor: Colors.pinkAccent,
                      overlayColor: const Color(0xF6E40140).withOpacity(0.3),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 12.0,
                      ),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 25.0),
                      trackHeight: 8,
                    ),
                    child: Slider(
                      value: height,
                      max: 220,
                      min: 120,
                      label: height.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableCard(
                  color: kInActiveCardColor,
                  click: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "WEIGHT",
                        style: kGenderCardTitleTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kLargeNumberTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                if (weight > 0) {
                                  weight - 1;
                                } else {
                                  weight == 0;
                                }
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  weight + 1;
                                  print(weight);
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                  height: 190.0,
                  width: 150.0,
                ),
                ReusableCard(
                  height: 190.0,
                  width: 150.0,
                  color: kInActiveCardColor,
                  click: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE",
                        style: kGenderCardTitleTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kLargeNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                if (age <= 0) {
                                  age == 0;
                                } else {
                                  age - 1;
                                }
                              });
                            },
                          ),
                          const SizedBox(width: 10),
                          RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  age + 1;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: BottomButton(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "CALCULATE YOUR BMI",
                  style: kBottomButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
