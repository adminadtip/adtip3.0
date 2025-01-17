class BlockListModel {
  int? status;
  String? message;
  List<BlockListData>? data;

  BlockListModel({this.status, this.message, this.data});

  BlockListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <BlockListData>[];
      json['data'].forEach((v) {
        data!.add( BlockListData.fromJson(v));
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

class BlockListData {
  int? id;
  String? name;
  String? email;
  String? website;
  String? location;
  String? phone;
  String? industry;
  String? about;
  String? button;
  String? coverimage;
  String? profileimage;
  String? profileFilename;
  String? coverFilename;
  int? followers;
  int? rating;
  int? isActive;
  int? createdby;
  String? createddate;
  String? updatedate;
  String? qrCodeImage;
  int? isBlock;

  BlockListData(
      {this.id,
      this.name,
      this.email,
      this.website,
      this.location,
      this.phone,
      this.industry,
      this.about,
      this.button,
      this.coverimage,
      this.profileimage,
      this.profileFilename,
      this.coverFilename,
      this.followers,
      this.rating,
      this.isActive,
      this.createdby,
      this.createddate,
      this.updatedate,
      this.qrCodeImage,
      this.isBlock});

  BlockListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    website = json['website'];
    location = json['location'];
    phone = json['phone'];
    industry = json['industry'];
    about = json['about'];
    button = json['button'];
    coverimage = json['coverimage'];
    profileimage = json['profileimage'];
    profileFilename = json['profileFilename'];
    coverFilename = json['coverFilename'];
    followers = json['followers'];
    rating = json['rating'];
    isActive = json['is_active'];
    createdby = json['createdby'];
    createddate = json['createddate'];
    updatedate = json['updatedate'];
    qrCodeImage = json['qr_code_image'];
    isBlock = json['isBlock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['website'] = website;
    data['location'] = location;
    data['phone'] = phone;
    data['industry'] = industry;
    data['about'] = about;
    data['button'] = button;
    data['coverimage'] = coverimage;
    data['profileimage'] = profileimage;
    data['profileFilename'] = profileFilename;
    data['coverFilename'] = coverFilename;
    data['followers'] = followers;
    data['rating'] = rating;
    data['is_active'] = isActive;
    data['createdby'] = createdby;
    data['createddate'] = createddate;
    data['updatedate'] = updatedate;
    data['qr_code_image'] = qrCodeImage;
    data['isBlock'] = isBlock;
    return data;
  }
}
