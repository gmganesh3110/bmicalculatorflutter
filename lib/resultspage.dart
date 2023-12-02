import 'package:bmicalculator/bottombutton.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/resuablecard.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpolation});
  final String bmiResult;
  final String resultText;
  final String interpolation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Your Result",
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                color: reusecolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: BMITextStyle,
                    ),
                    Text(
                      interpolation,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                ),
                onPress: () {}),
          ),
          BottomBotton(
              buttonText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
