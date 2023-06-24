import 'package:get/get.dart';
import 'package:karaoke_songbook/screens/home/recieved_requests/view/revieved_requests_screen.dart';

import '../../generated/assets.dart';
import '../../models/drawer_model.dart';
import '../../models/requests_model.dart';
import '../../screens/home/approved_requests/view/approved_requests_screen.dart';
import '../../screens/home/venue_selection/view/venue_select_screen.dart';

class ConstantLists {
  ConstantLists._();

  ///
  static var countriesList = [
    'Germany',
    'England',
    'France',
  ];

  static var regionList = [
    'Region 1',
    'Region 2',
    'Region 3',
    'Region 4',
    'Region 5',
  ];
  static var citiesList = [
    'City 1',
    'City 2',
    'City 3',
    'City 4',
    'City 5',
  ];
  static var venuesList = [
    'Venue 1',
    'Venue 2',
    'Venue 3',
    'Venue 4',
    'Venue 5',
  ];

  ///

  static List<DrawerModel> drawerList = [
    DrawerModel(
      title: "Select Venue",
      onPressed: () {
        Get.offAll(
          () => VenueSelectScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    DrawerModel(
        title: "Received",
        onPressed: () {
          Get.offAll(
            () => ReceivedRequestsScreen(),
            transition: Transition.fadeIn,
          );
        }),
    DrawerModel(
        title: "Approved",
        onPressed: () {
          Get.offAll(
            () => ApprovedRequestScreen(),
            transition: Transition.fadeIn,
          );
        }),
    DrawerModel(title: "Banned", onPressed: () {}),
    DrawerModel(title: "Notifications", onPressed: () {}),
  ];

  ///
  static List<String> decliningReasonList = [
    "Time up",
    "Technical Problem",
    "Another person has already requested"
  ];

  ///
  static List<RequestModel> requestModelList = [
    RequestModel(
      songName: "Beat It",
      songImage: Assets.songImagesSongImageOne,
      songOriginalSinger: "Michael Jackson",
      karaokeSinger: "Len Light",
      requestedBy: "Len Light",
      requestedTime: "2 mins ago",
      requesterImage: Assets.personImagePersonImage,
    ),
    RequestModel(
      songName: "Beat It",
      songImage: Assets.songImagesSongImageTwo,
      songOriginalSinger: "Michael Jackson",
      karaokeSinger: "Len Light",
      requestedBy: "Len Light",
      requestedTime: "2 mins ago",
      requesterImage: Assets.personImagePersonImage,
    ),
    RequestModel(
      songName: "Beat It",
      songImage: Assets.songImagesSongImageThree,
      songOriginalSinger: "Michael Jackson",
      karaokeSinger: "Len Light",
      requestedBy: "Len Light",
      requestedTime: "2 mins ago",
      requesterImage: Assets.personImagePersonImage,
    ),
    RequestModel(
      songName: "Beat It",
      songImage: Assets.songImagesSongImageFour,
      songOriginalSinger: "Michael Jackson",
      karaokeSinger: "Len Light",
      requestedBy: "Len Light",
      requestedTime: "2 mins ago",
      requesterImage: Assets.personImagePersonImage,
    ),
    RequestModel(
      songName: "Beat It",
      songImage: Assets.songImagesSongImageFive,
      songOriginalSinger: "Michael Jackson",
      karaokeSinger: "Len Light",
      requestedBy: "Len Light",
      requestedTime: "2 mins ago",
      requesterImage: Assets.personImagePersonImage,
    ),
    RequestModel(
      songName: "Beat It",
      songImage: Assets.songImagesSongImageFour,
      songOriginalSinger: "Michael Jackson",
      karaokeSinger: "Len Light",
      requestedBy: "Len Light",
      requestedTime: "2 mins ago",
      requesterImage: Assets.personImagePersonImage,
    ),
  ];
}
