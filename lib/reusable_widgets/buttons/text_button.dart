import 'package:flutter/material.dart';
import 'package:karaoke_songbook/utils/text_styles/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String buttonText;

  const CustomTextButton({
    super.key,
    required this.onPressedFunction,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedFunction,
      child: Text(
        buttonText,
        style: CCustomTextStyles.red417,
      ),
    );
  }
}
