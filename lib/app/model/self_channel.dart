class SelfChannelModel {
  int? status;
  String? message;
  List<SelfChannelData>? data;

  SelfChannelModel({this.status, this.message, this.data});

  SelfChannelModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <SelfChannelData>[];
      json['data'].forEach((v) {
        data!.add(SelfChannelData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SelfChannelData {
  int? channelId;
  String? channelName;
  String? desciption;
  String? channelUrl;
  String? profileImage;
  String? profileCoverImage;
  int? totalSubscribers;
  int? totalVideos;
  int? totalShorts;
  int? createdBy;
  int? updatedBy;
  String? createddate;
  String? updateddate;
  dynamic totalAdsDisplay;
  dynamic totalAdsLike;
  dynamic totalAdsView;
  dynamic totalEarnings;

  SelfChannelData(
      {this.channelId,
      this.channelName,
      this.desciption,
      this.channelUrl,
      this.profileImage,
      this.profileCoverImage,
      this.totalSubscribers,
      this.totalVideos,
      this.totalShorts,
      this.createdBy,
      this.updatedBy,
      this.createddate,
      this.totalAdsDisplay,
      this.totalAdsLike,
      this.totalAdsView,
      this.totalEarnings,
      this.updateddate});

  SelfChannelData.fromJson(Map<String, dynamic> json) {
    channelId = json['channelId'];
    channelName = json['channelName'];
    desciption = json['desciption'];
    channelUrl = json['channelUrl'];
    profileImage = json['profileImage'];
    profileCoverImage = json['profileCoverImage'];
    totalSubscribers = json['totalSubscribers'];
    totalVideos = json['totalReels'];
    totalShorts = json['totalShorts'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createddate = json['createddate'];
    updateddate = json['updateddate'];
    totalAdsDisplay = json['total_ads_display'];
    totalAdsView = json['total_ads_view'];
    totalAdsLike = json['total_ads_like'];
    totalEarnings = json['total_earnings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['channelId'] = this.channelId;
    data['channelName'] = this.channelName;
    data['desciption'] = this.desciption;
    data['channelUrl'] = this.channelUrl;
    data['profileImage'] = this.profileImage;
    data['profileCoverImage'] = this.profileCoverImage;
    data['totalSubscribers'] = this.totalSubscribers;
    data['totalVideos'] = this.totalVideos;
    data['totalShorts'] = this.totalShorts;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['createddate'] = this.createddate;
    data['updateddate'] = this.updateddate;
    return data;
  }
}
