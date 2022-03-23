import 'package:bmi_calculator/common/gender_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../style/style.dart';
import '../input_page.dart';
import '../common/gender_text_icon.dart';

class GenderModule extends StatefulWidget {
  GenderModule({
    Key? key,
    @required this.selectGender,
  }) : super(key: key);

  final Gender? selectGender;

  @override
  State<GenderModule> createState() => _GenderModuleState();
}

class _GenderModuleState extends State<GenderModule> {
  Gender? selectedGender;
  @override
  void initState() {
    selectedGender = widget.selectGender;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GenderContainer(
              onPressed: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              colors:
                  selectedGender == Gender.male ? activeColor : deActiveColor,
              cardWidget: GenderTextAndIcon(
                iconData: FontAwesomeIcons.person,
                label: 'MALE',
              ),
            ),
          ),
          Expanded(
            child: GenderContainer(
              onPressed: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              colors:
                  selectedGender == Gender.female ? activeColor : deActiveColor,
              cardWidget: GenderTextAndIcon(
                iconData: FontAwesomeIcons.personDress,
                label: 'FEMALE',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
