import 'package:flutter/material.dart';
import 'widgets/age_module.dart';
import 'widgets/calculate_bmi_button.dart';
import 'widgets/gender_module.dart';
import 'widgets/height_module.dart';
import 'widgets/weight_module.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender;

  final int sliderHeight = 180;

  final int sliderWeight = 60;

  final int sliderAge = 20;

  @override
  Widget build(BuildContext context) {
    var weightAndAgeModule = Expanded(
      child: Row(
        children: [
          WeightModule(sliderWeight: sliderWeight),
          AgeModule(sliderAge: sliderAge),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GenderModule(selectGender: selectGender),
          HeightModule(sliderHeight: sliderHeight),
          weightAndAgeModule,
          CalculateBmiButton(
              sliderHeight: sliderHeight, sliderWeight: sliderWeight)
        ],
      ),
    );
  }
}
