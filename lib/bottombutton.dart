import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class BottomBotton extends StatelessWidget {
  BottomBotton({required this.buttonText, required this.onTap});
  final String buttonText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomcolor,
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
