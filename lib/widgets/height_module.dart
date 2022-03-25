import 'package:bmi_calculator/common/gender_container.dart';
import 'package:bmi_calculator/controller/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/custom_text.dart';
import '../style/style.dart';

class HeightModule extends StatelessWidget {
  const HeightModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var a = context.read<DataProvider>();
    return Expanded(
      child: GenderContainer(
        colors: Color(0xFF1D1E33),
        cardWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              titleText: 'HEIGHT',
              textStyle: LabelStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<DataProvider>(
                  builder: (context, value, child) => CustomText(
                    titleText: value.height.toString(),
                    textStyle: NumberStyle,
                  ),
                ),
                CustomText(
                  titleText: 'cm',
                  textStyle: LabelStyle,
                ),
              ],
            ),
            Consumer<DataProvider>(
              builder: (context, value, child) => Slider(
                value: a.height,
                min: a.minHeight,
                max: a.maxHeight,
                activeColor: Color(0xFFEB1555),
                inactiveColor: Color(0xFF8D8E98),
                onChanged: (double newValue) {
                  a.changeInHeight(newValue);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
