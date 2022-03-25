import 'package:bmi_calculator/common/common_button_widget.dart';
import 'package:bmi_calculator/controller/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    return Consumer<DataProvider>(
      builder: (context, value, child) => GestureDetector(
        onTap: () {
          calculateBmiAndLaunchResultScreen(context);
        },
        child: CommonButtonWidget(
          buttonName: 'CALCULATE YOUR BMI',
        ),
      ),
    );
  }

  void calculateBmiAndLaunchResultScreen(BuildContext context) {
    var data = context.read<DataProvider>();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          bmiResult: data.calculateBMI(),
          resultCriteria: data.getResult(),
          resultDescription: data.getDescription(),
        ),
      ),
    );
  }
}
