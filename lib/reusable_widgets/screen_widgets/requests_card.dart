import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karaoke_songbook/generated/assets.dart';
import 'package:karaoke_songbook/utils/alignment/widget_alignment.dart';
import 'package:karaoke_songbook/utils/gaps/gaps.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class RequestsCard extends StatelessWidget {
  final Function()? onTapFunction;
  final bool isApprovedWidget;
  final String songName,
      songImage,
      songOriginalSinger,
      karaokeSinger,
      requestedBy;
  final int approvalIndex;

  const RequestsCard({
    super.key,
    required this.isApprovedWidget,
    required this.onTapFunction,
    required this.songName,
    required this.songImage,
    required this.songOriginalSinger,
    required this.karaokeSinger,
    required this.requestedBy,
    this.approvalIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        padding: isApprovedWidget
            ? const EdgeInsets.symmetric(
                vertical: 10,
              )
            : const EdgeInsets.only(bottom: 10),
        width: context.width * 1,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: CColors.appBarColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isApprovedWidget
                ? Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomRight: Radius.circular(3),
                        ),
                        color: CColors.darkColor),
                    child: Text(
                      approvalIndex.toString(),
                      style: CCustomTextStyles.primary409,
                    ),
                  ).alignWidget(alignment: Alignment.centerLeft)
                : const SizedBox.shrink(),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    songImage,
                    width: 55,
                    height: 55,
                  ),
                  10.pw,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songName,
                        style: CCustomTextStyles.white715,
                      ),
                      Text(
                        songOriginalSinger,
                        style: CCustomTextStyles.dividerColorTwo413,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: CColors.whiteColor.withOpacity(0.1),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        Assets.requestsRequestMoveIcon,
                        height: 20,
                        width: 20,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 10,
              ),
            ),
            const Divider(
              thickness: 1,
              color: CColors.dividerColor,
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: "Singer's name : ",
                          style: CCustomTextStyles.dividerColorTwo412,
                        ),
                        TextSpan(
                          text: karaokeSinger,
                          style: CCustomTextStyles.primary412,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: "Requested By :",
                          style: CCustomTextStyles.dividerColorTwo412,
                        ),
                        TextSpan(
                          text: requestedBy,
                          style: CCustomTextStyles.primary412,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
