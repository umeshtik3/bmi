import 'package:bmi_calculator/common/custom_text.dart';
import 'package:bmi_calculator/controller/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../style/style.dart';
import 'round_icons.dart';
import '../common/gender_container.dart';

class AgeModule extends StatelessWidget {
  const AgeModule({
    Key? key,
  }) : super(key: key);

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
            Consumer<DataProvider>(
              builder: (context, age, child) => CustomText(
                titleText: age.age.toString(),
                textStyle: NumberStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIcons(
                  iconData: FontAwesomeIcons.minus,
                  onPress: () {
                    var age = context.read<DataProvider>();
                    age.decrementAge();
                  },
                ),
                SizedBox(width: 10.0),
                RoundIcons(
                  iconData: FontAwesomeIcons.plus,
                  onPress: () {
                    var age = context.read<DataProvider>();
                    age.incrementAge();
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
