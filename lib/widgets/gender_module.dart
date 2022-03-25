import 'package:bmi_calculator/common/gender_container.dart';
import 'package:bmi_calculator/controller/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../style/style.dart';
import '../input_page.dart';
import '../common/gender_text_icon.dart';

class GenderModule extends StatelessWidget {
  GenderModule({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<DataProvider>(
        builder: (context, value, child) => Row(
          children: [
            Expanded(
              child: GenderContainer(
                onPressed: () {
                  value.checkGender(Gender.male);
                },
                colors: value.selectGender == Gender.male
                    ? activeColor
                    : deActiveColor,
                cardWidget: GenderTextAndIcon(
                  iconData: FontAwesomeIcons.person,
                  label: 'MALE',
                ),
              ),
            ),
            Expanded(
              child: GenderContainer(
                onPressed: () {
                  value.checkGender(Gender.female);
                },
                colors: value.selectGender == Gender.female
                    ? activeColor
                    : deActiveColor,
                cardWidget: GenderTextAndIcon(
                  iconData: FontAwesomeIcons.personDress,
                  label: 'FEMALE',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
