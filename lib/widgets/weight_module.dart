import 'package:bmi_calculator/common/gender_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../common/custom_text.dart';
import '../style/style.dart';
import 'round_icons.dart';

class WeightModule extends StatefulWidget {
  WeightModule({
    Key? key,
    @required this.sliderWeight,
  }) : super(key: key);

  final int? sliderWeight;

  @override
  State<WeightModule> createState() => _WeightModuleState();
}

class _WeightModuleState extends State<WeightModule> {
  int? weight;
  @override
  void initState() {
    weight = widget.sliderWeight;
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
              titleText: 'WEIGHT',
              textStyle: LabelStyle,
            ),
            CustomText(
              titleText: weight.toString(),
              textStyle: NumberStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIcons(
                  iconData: FontAwesomeIcons.minus,
                  onPress: () {
                    setState(() {
                      weight = weight! - 1;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                RoundIcons(
                  iconData: FontAwesomeIcons.plus,
                  onPress: () {
                    setState(() {
                      weight = weight! + 1;
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
