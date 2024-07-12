class FollowedChannelModel {
  int? status;
  String? message;
  List<FollowedChannelData>? data;

  FollowedChannelModel({this.status, this.message, this.data});

  FollowedChannelModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <FollowedChannelData>[];
      json['data'].forEach((v) {
        data!.add(FollowedChannelData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FollowedChannelData {
  int? id;
  String? name;
  String? desciption;
  int? channelUrl;
  String? profileImage;
  String? profileCoverImage;
  int? totalSubscribers;
  int? totalVideos;
  int? totalShorts;
  int? totalLikes;
  int? totalViews;
  int? totalFollowers;
  int? isActive;
  int? createdby;
  int? updatedby;
  String? createddate;
  String? updateddate;

  FollowedChannelData(
      {this.id,
      this.name,
      this.desciption,
      this.channelUrl,
      this.profileImage,
      this.profileCoverImage,
      this.totalSubscribers,
      this.totalVideos,
      this.totalShorts,
      this.totalLikes,
      this.totalViews,
      this.totalFollowers,
      this.isActive,
      this.createdby,
      this.updatedby,
      this.createddate,
      this.updateddate});

  FollowedChannelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desciption = json['desciption'];
    channelUrl = json['channel_url'];
    profileImage = json['profile_image'];
    profileCoverImage = json['profile_cover_image'];
    totalSubscribers = json['total_subscribers'];
    totalVideos = json['total_videos'];
    totalShorts = json['total_shorts'];
    totalLikes = json['total_likes'];
    totalViews = json['total_views'];
    totalFollowers = json['total_followers'];
    isActive = json['is_active'];
    createdby = json['createdby'];
    updatedby = json['updatedby'];
    createddate = json['createddate'];
    updateddate = json['updateddate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['desciption'] = desciption;
    data['channel_url'] = channelUrl;
    data['profile_image'] = profileImage;
    data['profile_cover_image'] = profileCoverImage;
    data['total_subscribers'] = totalSubscribers;
    data['total_videos'] = totalVideos;
    data['total_shorts'] = totalShorts;
    data['total_likes'] = totalLikes;
    data['total_views'] = totalViews;
    data['total_followers'] = totalFollowers;
    data['is_active'] = isActive;
    data['createdby'] = createdby;
    data['updatedby'] = updatedby;
    data['createddate'] = createddate;
    data['updateddate'] = updateddate;
    return data;
  }
}
