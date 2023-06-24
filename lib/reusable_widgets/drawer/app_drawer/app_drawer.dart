import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karaoke_songbook/utils/gaps/gaps.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/constant_lists.dart';
import '../components/drawer_components.dart';

class AppDrawer extends StatelessWidget {
  final int selectedIndex;

  const AppDrawer({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.width * 0.85,
      backgroundColor: CColors.appBarColor,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                const CircularBoxWidget(
                  userName: "Latina Merket",
                  imageString: "",
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ConstantLists.drawerList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    thickness: 1,
                    color: CColors.dividerColor,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return DrawerListTile(
                      titleText: ConstantLists.drawerList[index].title,
                      onPressed: ConstantLists.drawerList[index].onPressed,
                      itemIndex: index,
                      selectedIndex: selectedIndex,
                    );
                  },
                ),
              ]),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  Divider(
                    thickness: 1,
                    color: Colors.white.withOpacity(0.1),
                  ),
                  DrawerListTile(
                    titleText: "Logout",
                    onPressed: () {},
                    itemIndex: 4,
                    selectedIndex: selectedIndex,
                  ),
                  20.ph,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
