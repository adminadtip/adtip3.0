class LikedModel {
  int? status;
  String? message;
  List<LikedData>? data;

  LikedModel({this.status, this.message, this.data});

  LikedModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LikedData>[];
      json['data'].forEach((v) {
        data!.add(LikedData.fromJson(v));
      });
    }
  }
}

class LikedData {
  int? id;
  String? companyName;
  int? companyId;
  int? createdBy;
  String? adDescription;

  LikedData({
    this.id,
    this.companyName,
    this.createdBy,
    this.companyId,
    this.adDescription,
  });

  LikedData.fromJson(Map<String, dynamic> json) {
    id = json['ad_id'];
    companyName = json['company_name'];
    companyId = json['company_id'];
    createdBy = json['createdby'];
    adDescription = json['ad_description'];
  }
}
