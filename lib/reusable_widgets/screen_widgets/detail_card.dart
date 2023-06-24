import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karaoke_songbook/reusable_widgets/buttons/custom_outline_button.dart';
import 'package:karaoke_songbook/reusable_widgets/buttons/reuse_elevated_button.dart';
import 'package:karaoke_songbook/reusable_widgets/buttons/text_button.dart';
import 'package:karaoke_songbook/utils/alignment/widget_alignment.dart';
import 'package:karaoke_songbook/utils/gaps/gaps.dart';
import 'package:karaoke_songbook/utils/text_styles/text_styles.dart';
import '../../utils/colors/app_colors.dart';
import 'custom_circle.dart';

class DetailCard extends StatelessWidget {
  final String songName,
      songImage,
      songOriginalSinger,
      karaokeSinger,
      requestedBy,
      requestedTime,
      requesterImage,
      buttonOneText;
  final bool isForApprovedDetail;
  final Function()? buttonOneFunction, banUserFunction, declineFunction;

  const DetailCard({
    super.key,
    required this.isForApprovedDetail,
    required this.songName,
    required this.songImage,
    required this.songOriginalSinger,
    required this.karaokeSinger,
    required this.requestedBy,
    required this.requestedTime,
    required this.requesterImage,
    required this.buttonOneText,
    required this.banUserFunction,
    required this.buttonOneFunction,
    this.declineFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: CColors.appBarColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 75,
                width: 75,
                child: Stack(
                  children: [
                    CustomCircle(
                      color: CColors.outerCircleColor,
                      strokeWidth: 10,
                      height: 75,
                      width: 75,
                    ).alignWidget(alignment: Alignment.center),
                    CustomCircle(
                      color: CColors.innerCircle,
                      strokeWidth: 10,
                      height: 65,
                      width: 65,
                    ).alignWidget(alignment: Alignment.center),
                    Image.asset(
                      songImage,
                      width: 55,
                      height: 55,
                    ).alignWidget(alignment: Alignment.center),
                  ],
                ),
              ),
              10.pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    songName,
                    style: CCustomTextStyles.white719,
                  ),
                  Text(
                    songOriginalSinger,
                    style: CCustomTextStyles.dividerColorTwo417,
                  )
                ],
              ),
            ],
          ).paddingSymmetric(
            vertical: 20,
            horizontal: 20,
          ),
          10.ph,
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: CColors.dividerColor),
                      right: BorderSide(color: CColors.dividerColor),
                      bottom: BorderSide(color: CColors.dividerColor),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Singer's name",
                        style: CCustomTextStyles.dividerColorTwo416,
                      ),
                      Text(
                        karaokeSinger,
                        style: CCustomTextStyles.primary414,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: CColors.dividerColor),
                      bottom: BorderSide(color: CColors.dividerColor),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Singer's name",
                        style: CCustomTextStyles.dividerColorTwo416,
                      ),
                      Text(
                        requestedBy,
                        style: CCustomTextStyles.primary414,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          50.ph,
          Container(
            width: context.width * 1,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: CColors.darkColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      requesterImage,
                      width: 55,
                      height: 55,
                    ),
                    10.pw,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          requestedBy,
                          style: CCustomTextStyles.white715,
                        ),
                        Text(
                          requestedTime,
                          style: CCustomTextStyles.dividerColorTwo413,
                        )
                      ],
                    ),
                  ],
                ).alignWidget(
                  alignment: Alignment.centerLeft,
                ),
                25.ph,
                CustomElevatedButton(
                  onPressedFunction: buttonOneFunction,
                  buttonText: buttonOneText,
                  width: context.width * 1,
                ),
                20.ph,
                isForApprovedDetail
                    ? const SizedBox.shrink()
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomOutlinedButton(
                            onPressedFunction: declineFunction,
                            buttonText: "Decline",
                            width: context.width * 1,
                          ),
                          20.ph,
                        ],
                      ),
                CustomTextButton(
                  onPressedFunction: banUserFunction,
                  buttonText: "Ban User",
                )
              ],
            ),
          ).paddingSymmetric(
            vertical: 20,
            horizontal: 20,
          ),
          20.ph,
        ],
      ),
    );
  }
}
