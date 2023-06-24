import 'package:flutter/material.dart';
import 'package:karaoke_songbook/utils/gaps/gaps.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String tileText;
  final Function()? onPressFunction;

  const CustomAppBar(
      {Key? key, required this.tileText, required this.onPressFunction})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      titleTextStyle: CCustomTextStyles.white719,
      title: Text(
        tileText,
      ),
      centerTitle: true,
      backgroundColor: CColors.appBarColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          20.pw,
          Expanded(
            child: Container(
              height: 45,
              width: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: CColors.whiteColor.withOpacity(0.1),
                ),
              ),
              child: IconButton(
                onPressed: onPressFunction,
                icon: const Icon(
                  Icons.menu_rounded,
                  color: CColors.whiteColor,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      leadingWidth: 75,
    );
  }
}
