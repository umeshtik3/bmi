import 'package:bmi_calculator/controller/data_provider.dart';
import 'package:bmi_calculator/style/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'input_page.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => DataProvider(), child: BMICalculator()));

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}
