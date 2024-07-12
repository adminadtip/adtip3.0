class CommentVideoModel {
  int? status;
  String? message;
  List<CommentVideoData>? data;

  CommentVideoModel({this.status, this.message, this.data});

  CommentVideoModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <CommentVideoData>[];
      json['data'].forEach((v) {
        data!.add(CommentVideoData.fromJson(v));
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

class CommentVideoData {
  int? id;
  String? comment;
  int? videoId;
  int? parentCommentId;
  String? commentReact;
  String? commentFile;
  int? isLike;
  int? isUnlike;
  int? reactValue;
  int? isReact;
  int? isActive;
  int? totalCommentReact;
  int? totalCommentLike;
  int? createdby;
  String? createddate;
  String? updateddate;
  int? channelId;
  String? channelName;
  int? totalChannelLikes;
  int? totalChannelFollowers;
  int? totalChannelVideo;
  String? channelProfile;
  String? channelProfileCover;

  CommentVideoData({
    this.id,
    this.comment,
    this.videoId,
    this.parentCommentId,
    this.commentReact,
    this.commentFile,
    this.isLike,
    this.isUnlike,
    this.reactValue,
    this.isReact,
    this.isActive,
    this.totalCommentReact,
    this.totalCommentLike,
    this.createdby,
    this.createddate,
    this.updateddate,
    this.channelId,
    this.channelName,
    this.totalChannelLikes,
    this.totalChannelFollowers,
    this.totalChannelVideo,
    this.channelProfile,
    this.channelProfileCover,
  });

  CommentVideoData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    comment = json['comment'];
    videoId = json['video_id'];
    parentCommentId = json['parent_comment_id'];
    commentReact = json['comment_react'];
    commentFile = json['comment_file'];
    isLike = json['is_like'];
    isUnlike = json['is_unlike'];
    reactValue = json['react_value'];
    isReact = json['is_react'];
    isActive = json['is_active'];
    totalCommentReact = json['total_comment_react'];
    totalCommentLike = json['total_comment_like'];
    createdby = json['createdby'];
    createddate = json['createddate'];
    updateddate = json['updateddate'];
    channelId = json['channelId'];
    channelName = json['channelName'];
    totalChannelLikes = json['total_channel_likes'];
    totalChannelFollowers = json['total_channel_followers'];
    totalChannelVideo = json['total_channel_video'];
    channelProfile = json['channel_profile'];
    channelProfileCover = json['channelProfileCover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['comment'] = comment;
    data['video_id'] = videoId;
    data['parent_comment_id'] = parentCommentId;
    data['comment_react'] = commentReact;
    data['comment_file'] = commentFile;
    data['is_like'] = isLike;
    data['is_unlike'] = isUnlike;
    data['react_value'] = reactValue;
    data['is_react'] = isReact;
    data['is_active'] = isActive;
    data['total_comment_react'] = totalCommentReact;
    data['total_comment_like'] = totalCommentLike;
    data['createdby'] = createdby;
    data['createddate'] = createddate;
    data['updateddate'] = updateddate;
    data['channelId'] = channelId;
    data['channelName'] = channelName;
    data['total_channel_likes'] = totalChannelLikes;
    data['total_channel_followers'] = totalChannelFollowers;
    data['total_channel_video'] = totalChannelVideo;
    data['channel_profile'] = channelProfile;
    data['channelProfileCover'] = channelProfileCover;

    return data;
  }
}
