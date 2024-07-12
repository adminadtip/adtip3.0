class AdModel {
  int? status;
  String? message;
  List<AdModelData>? data;

  AdModel({this.status, this.message, this.data});

  AdModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <AdModelData>[];
      json['data'].forEach((v) {
        data!.add(AdModelData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AdModelData {
  int? id;
  String? name;
  var viewPrice;
  var basePrice;
  var discount;
  String? modelImage;
  String? imagePath;
  String? mediaType;

  AdModelData(
      {this.id,
      this.name,
      this.viewPrice,
      this.basePrice,
      this.discount,
      this.modelImage,
      this.imagePath,
      this.mediaType});

  AdModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    viewPrice = json['viewPrice'];
    basePrice = json['basePrice'];
    discount = json['discount'];
    modelImage = json['modelImage'];
    imagePath = json['imagePath'];
    mediaType = json['mediaType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['viewPrice'] = viewPrice;
    data['basePrice'] = basePrice;
    data['discount'] = discount;
    data['modelImage'] = modelImage;
    data['imagePath'] = imagePath;
    data['mediaType'] = mediaType;

    return data;
  }
}
