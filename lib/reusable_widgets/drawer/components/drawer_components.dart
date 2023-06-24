import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karaoke_songbook/utils/gaps/gaps.dart';

import '../../../generated/assets.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/text_styles/text_styles.dart';

class CircularBoxWidget extends StatelessWidget {
  final String userName, imageString;

  const CircularBoxWidget({
    Key? key,
    required this.userName,
    required this.imageString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: CColors.blackColor.withOpacity(0.1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.drawerDrawerUserImage,
            height: 65,
            width: 65,
          ),
          15.pw,
          FittedBox(
            child: Text(
              userName,
              style: CCustomTextStyles.white719,
            ),
          ),
        ],
      ),
    ).paddingSymmetric(vertical: 25, horizontal: 25);
  }
}

class DrawerListTile extends StatelessWidget {
  final String titleText;
  final int itemIndex, selectedIndex;
  final Function()? onPressed;

  const DrawerListTile(
      {Key? key,
      required this.titleText,
      required this.onPressed,
      required this.itemIndex,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      title: Text(titleText),
      onTap: itemIndex == selectedIndex ? null : onPressed,
      titleTextStyle: itemIndex == selectedIndex
          ? CCustomTextStyles.primary421
          : CCustomTextStyles.white421,
      trailing: titleText == "Notifications"
          ? Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: CColors.primaryColor,
              ),
              child: const Text(
                "5",
                style: CCustomTextStyles.black418,
              ),
            )
          : null,
    );
  }
}
