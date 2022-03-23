import 'package:bmi_calculator/common/gender_container.dart';
import 'package:flutter/material.dart';

import '../common/custom_text.dart';
import '../style/style.dart';

class HeightModule extends StatefulWidget {
  const HeightModule({
    Key? key,
    @required this.sliderHeight,
  }) : super(key: key);

  final int? sliderHeight;

  @override
  State<HeightModule> createState() => _HeightModuleState();
}

class _HeightModuleState extends State<HeightModule> {
  int? height;
  @override
  void initState() {
    height = widget.sliderHeight;
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
              titleText: 'HEIGHT',
              textStyle: LabelStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  titleText: height.toString(),
                  textStyle: NumberStyle,
                ),
                CustomText(
                  titleText: 'cm',
                  textStyle: LabelStyle,
                ),
              ],
            ),
            Slider(
              value: height!.toDouble(),
              min: 120.0,
              max: 220.0,
              activeColor: Color(0xFFEB1555),
              inactiveColor: Color(0xFF8D8E98),
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
