class ProductListByUser {
  int? status;
  String? message;
  List<ProductListByUserData>? data;

  ProductListByUser({this.status, this.message, this.data});

  ProductListByUser.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ProductListByUserData>[];
      json['data'].forEach((v) {
        data!.add(ProductListByUserData.fromJson(v));
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

class ProductListByUserData {
  int? id;
  String? name;
  String? description;
  dynamic productType;
  List<String>? images;
  String? brand;
  int? categoryId;
  String? deliveryTime;
  String? deliveryType;
  String? termsCondition;
  int? totalViews;
  int? totalLikes;
  int? units;
  String? regularPrice;
  String? marketPrice;
  int? totalRating;
  int? totalWishList;
  List<String>? size;
  int? companyId;
  int? isActive;
  int? isDeleted;
  String? createddate;
  dynamic updatedate;
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
  int? createdby;
  String? qrCodeImage;

  ProductListByUserData(
      {this.id,
      this.name,
      this.description,
      this.productType,
      this.images,
      this.brand,
      this.categoryId,
      this.deliveryTime,
      this.deliveryType,
      this.termsCondition,
      this.totalViews,
      this.totalLikes,
      this.units,
      this.regularPrice,
      this.marketPrice,
      this.totalRating,
      this.totalWishList,
      this.size,
      this.companyId,
      this.isActive,
      this.isDeleted,
      this.createddate,
      this.updatedate,
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
      this.createdby,
      this.qrCodeImage});

  ProductListByUserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    productType = json['product_type'];
    images = json['images'].cast<String>();
    brand = json['brand'];
    categoryId = json['category_id'];
    deliveryTime = json['delivery_time'];
    deliveryType = json['delivery_type'];
    termsCondition = json['terms_condition'];
    totalViews = json['total_views'];
    totalLikes = json['total_likes'];
    units = json['units'];
    regularPrice = json['regular_price'];
    marketPrice = json['market_price'];
    totalRating = json['total_rating'];
    totalWishList = json['total_wish_list'];
    size = json['size'].cast<String>();
    companyId = json['company_id'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    createddate = json['createddate'];
    updatedate = json['updatedate'];
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
    createdby = json['createdby'];
    qrCodeImage = json['qr_code_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['product_type'] = this.productType;
    data['images'] = this.images;
    data['brand'] = this.brand;
    data['category_id'] = this.categoryId;
    data['delivery_time'] = this.deliveryTime;
    data['delivery_type'] = this.deliveryType;
    data['terms_condition'] = this.termsCondition;
    data['total_views'] = this.totalViews;
    data['total_likes'] = this.totalLikes;
    data['units'] = this.units;
    data['regular_price'] = this.regularPrice;
    data['market_price'] = this.marketPrice;
    data['total_rating'] = this.totalRating;
    data['total_wish_list'] = this.totalWishList;
    data['size'] = this.size;
    data['company_id'] = this.companyId;
    data['is_active'] = this.isActive;
    data['is_deleted'] = this.isDeleted;
    data['createddate'] = this.createddate;
    data['updatedate'] = this.updatedate;
    data['email'] = this.email;
    data['website'] = this.website;
    data['location'] = this.location;
    data['phone'] = this.phone;
    data['industry'] = this.industry;
    data['about'] = this.about;
    data['button'] = this.button;
    data['coverimage'] = this.coverimage;
    data['profileimage'] = this.profileimage;
    data['profileFilename'] = this.profileFilename;
    data['coverFilename'] = this.coverFilename;
    data['followers'] = this.followers;
    data['rating'] = this.rating;
    data['createdby'] = this.createdby;
    data['qr_code_image'] = this.qrCodeImage;
    return data;
  }
}
