import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final Color fillColor;
  final String hintText;
  final double width, height;
  final Function(String)? onChangedFunction;
  final bool isPasswordVisible;
  final Function()? visibilityFunction;

  const CustomTextField({
    Key? key,
    this.fillColor = Colors.transparent,
    this.width = 250,
    this.height = 50,
    this.hintText = "",
    this.isPasswordVisible = false,
    this.onChangedFunction,
    this.visibilityFunction,
    required this.validatorFunction,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: textEditingController,
        textAlignVertical: TextAlignVertical.center,
        style: CCustomTextStyles.primary417,
        keyboardType: TextInputType.text,
        obscureText: isPasswordVisible,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          hintText: hintText,
          hintStyle: CCustomTextStyles.hintColor414,
          filled: true,
          fillColor: fillColor,
          suffixIcon: IconButton(
            onPressed: visibilityFunction,
            icon: Icon(
              isPasswordVisible
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              color: CColors.dividerColorTwo,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.whiteColor.withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.redColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.whiteColor.withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.whiteColor.withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
          ),
        ),
        onChanged: onChangedFunction,
        validator: validatorFunction,
      ),
    );
  }
}
