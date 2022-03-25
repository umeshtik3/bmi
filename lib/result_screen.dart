import 'package:bmi_calculator/common/gender_container.dart';
import 'package:flutter/material.dart';
import 'style/style.dart';

import 'input_page.dart';
import 'common/common_button_widget.dart';

class ResultScreen extends StatelessWidget {
  final bmiResult;
  final resultCriteria;
  final resultDescription;
  ResultScreen(
      {@required this.bmiResult, this.resultCriteria, this.resultDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result...',
                  style: ResultTitleStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: GenderContainer(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultCriteria.toUpperCase(),
                    style: ResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    style: ResultStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    resultDescription,
                    style: LabelStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                launchInputScreen(context);
                
              },
              child: CommonButtonWidget(buttonName: 'CALCULATE AGAIN',),
            ),
          ),
        ],
      ),
    );
  }

  void launchInputScreen(BuildContext context) {
     Navigator.push(context,
        MaterialPageRoute(builder: (context) => InputPage()));
  }
}


