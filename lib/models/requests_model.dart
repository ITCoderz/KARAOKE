class RequestModel {
  String songName,
      songImage,
      songOriginalSinger,
      karaokeSinger,
      requestedBy,
      requestedTime,
      requesterImage;

  RequestModel({
    required this.songName,
    required this.songImage,
    required this.songOriginalSinger,
    required this.karaokeSinger,
    required this.requestedBy,
    required this.requestedTime,
    required this.requesterImage,
  });
}
