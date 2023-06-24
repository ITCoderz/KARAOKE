import 'package:flutter/material.dart';
import 'package:karaoke_songbook/utils/colors/app_colors.dart';
import 'package:karaoke_songbook/utils/text_styles/text_styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String buttonText;
  final double height, width;

  const CustomOutlinedButton({
    super.key,
    required this.onPressedFunction,
    required this.buttonText,
    required this.width,
    this.height = 55,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        side: const BorderSide(
          color: CColors.primaryColor,
        ),
        elevation: 0.0,
        shape: const StadiumBorder(),
      ),
      child: Text(
        buttonText,
        style: CCustomTextStyles.primary417,
      ),
    );
  }
}
