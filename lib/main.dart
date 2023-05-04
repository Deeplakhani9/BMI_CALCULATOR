import 'package:bmi_animate/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      BMICalculator(),
  );
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
