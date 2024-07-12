class ShortVideoModel {
  int? status;
  String? message;
  List<ShortVideoData>? data;

  ShortVideoModel({this.status, this.message, this.data});

  ShortVideoModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ShortVideoData>[];
      json['data'].forEach((v) {
        data!.add(ShortVideoData.fromJson(v));
      });
    }
  }
}

class ShortVideoData {
  int? id;
  String? name;
  int? categoryId;
  String? videoLink;
  String? videoDescription;
  int? totalViews;
  int? totalLikes;
  int? createdBy;
  int? isLike;
  int? isChannelFollow;
  String? channelName;
  String? channelProfileImage;
  int? channelId;
  String? thumbnail;
  int? totalComments;
  bool isAd;

  ShortVideoData(
      {required this.id,
      required this.name,
      required this.totalComments,
      required this.categoryId,
      required this.videoLink,
      required this.totalViews,
      required this.totalLikes,
      required this.isLike,
      required this.channelName,
      required this.channelId,
      required this.thumbnail,
      required this.createdBy,
      required this.isAd,
      required this.channelProfileImage,
      required this.isChannelFollow,
      required this.videoDescription});

  factory ShortVideoData.fromJson(Map<String, dynamic> json) => ShortVideoData(
        id: json['id'],
        name: json['name'],
        categoryId: json['category_id'],
        videoLink: json['video_link'],
        totalViews: json['total_views'],
        totalLikes: json['total_likes'],
        isLike: json['is_like'],
        channelName: json['channelName'],
        channelId: json['channelId'],
        thumbnail: json['video_Thumbnail'],
        totalComments: json['total_comments'],
        createdBy: json['createdby'],
        channelProfileImage: json['channel_profile'],
        isChannelFollow: json['channel_follow'],
        videoDescription: json['video_desciption'],
        isAd: false,
      );
}
