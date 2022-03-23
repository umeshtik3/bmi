import 'package:flutter/material.dart';

import '../style/style.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    Key? key,
    this.buttonName
  }) : super(key: key);

  final String? buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          buttonName.toString(),
          style: CalculateButtonStyle,
        ),
      ),
      color: Color(0xFFEB1555),
      margin: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: 80.0,
    );
  }
}