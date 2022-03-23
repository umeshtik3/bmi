import 'package:bmi_calculator/common/common_button_widget.dart';
import 'package:flutter/material.dart';

import '../logic/bmi_calculator.dart';
import '../result_screen.dart';

class CalculateBmiButton extends StatelessWidget {
  const CalculateBmiButton({
    Key? key,
    @required this.sliderHeight,
    @required this.sliderWeight,
  }) : super(key: key);

  final int? sliderHeight;
  final int? sliderWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        calculateBmiAndLaunchResultScreen(context);
      },
      child: CommonButtonWidget(
        buttonName: 'CALCULATE YOUR BMI',
      ),
    );
  }

  void calculateBmiAndLaunchResultScreen(BuildContext context) {
    BmiCalculator bmiCalculator =
        BmiCalculator(height: sliderHeight!, weight: sliderWeight!);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          bmiResult: bmiCalculator.calculateBMI(),
          resultCriteria: bmiCalculator.getResult(),
          resultDescription: bmiCalculator.getDescription(),
        ),
      ),
    );
  }
}
