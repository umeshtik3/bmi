import 'package:bmi_calculator/common/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../style/style.dart';
import 'round_icons.dart';
import '../common/gender_container.dart';

class AgeModule extends StatefulWidget {
  const AgeModule({
    Key? key,
    @required this.sliderAge,
  }) : super(key: key);

  final int? sliderAge;

  @override
  State<AgeModule> createState() => _AgeModuleState();
}

class _AgeModuleState extends State<AgeModule> {
  int? age;
  @override
  void initState() {
    age = widget.sliderAge;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GenderContainer(
        colors: Color(0xFF1D1E33),
        cardWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              titleText: 'AGE',
              textStyle: LabelStyle,
            ),
            CustomText(
              titleText: age.toString(),
              textStyle: NumberStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIcons(
                  iconData: FontAwesomeIcons.minus,
                  onPress: () {
                    setState(() {
                      age = age! - 1;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                RoundIcons(
                  iconData: FontAwesomeIcons.plus,
                  onPress: () {
                    setState(() {
                      age = age! + 1;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
