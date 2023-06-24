import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomDropDown extends StatelessWidget {
  final Function(String?)? onChanged;
  final List mappingList;
  final String hintText;
  final double height, width;

  const CustomDropDown(
      {super.key,
      this.height = 50,
      this.width = 100,
      required this.onChanged,
      required this.hintText,
      required this.mappingList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Colors.transparent,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.whiteColor.withOpacity(0.1),
            ),
            borderRadius: const BorderRadius.all(
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
        isExpanded: true,
        hint: FittedBox(
          child: Text(
            hintText,
            style: CCustomTextStyles.hintColor414,
          ),
        ),
        items: mappingList
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      item,
                      style: CCustomTextStyles.primary417,
                    ),
                  ),
                ))
            .toList(),
        isDense: true,
        menuItemStyleData: const MenuItemStyleData(
          overlayColor: MaterialStatePropertyAll(CColors.appBarColor),
        ),
        validator: (value) {
          return null;
        },
        onChanged: onChanged,
        buttonStyleData: const ButtonStyleData(
          height: 60,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_rounded,
          ),
          iconSize: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          offset: const Offset(0, -10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
