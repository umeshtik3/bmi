import 'package:bmi_calculator/common/gender_container.dart';
import 'package:bmi_calculator/controller/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../common/custom_text.dart';
import '../style/style.dart';
import 'round_icons.dart';

class WeightModule extends StatelessWidget {
  WeightModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = context.read<DataProvider>();
    return Expanded(
      child: GenderContainer(
        colors: Color(0xFF1D1E33),
        cardWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              titleText: 'WEIGHT',
              textStyle: LabelStyle,
            ),
            Consumer<DataProvider>(
              builder: (context, value, child) => CustomText(
                titleText: value.weight.toString(),
                textStyle: NumberStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIcons(
                  iconData: FontAwesomeIcons.minus,
                  onPress: () {
                    data.decrementWeight();
                  },
                ),
                SizedBox(width: 10.0),
                RoundIcons(
                  iconData: FontAwesomeIcons.plus,
                  onPress: () {
                    data.incrementWeight();
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
