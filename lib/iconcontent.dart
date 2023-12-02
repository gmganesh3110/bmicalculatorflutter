import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  IconWidget({required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
