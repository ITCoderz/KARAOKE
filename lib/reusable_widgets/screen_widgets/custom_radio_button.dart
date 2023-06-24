import 'package:flutter/material.dart';
import 'package:karaoke_songbook/utils/gaps/gaps.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomCheckBox extends StatelessWidget {
  final void Function(dynamic)? onChangeFunction;
  final dynamic groupValue;
  final dynamic value;
  final String reasonString;

  const CustomCheckBox({
    Key? key,
    required this.onChangeFunction,
    required this.groupValue,
    required this.value,
    required this.reasonString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
            value: value,
            groupValue: groupValue,
            activeColor: CColors.primaryColor,
            splashRadius: 10,
            visualDensity: VisualDensity.compact,
            onChanged: onChangeFunction),
        15.pw,
        Expanded(
          child: Text(
            reasonString,
            style: CCustomTextStyles.white418,
          ),
        ),
      ],
    );
  }
}
