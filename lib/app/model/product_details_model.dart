class ProductDetailsModel {
  int? status;
  String? message;
  List<ProductDetailsData>? data;

  ProductDetailsModel({this.status, this.message, this.data});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ProductDetailsData>[];
      json['data'].forEach((v) {
        data!.add(ProductDetailsData.fromJson(v));
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

class ProductDetailsData {
  int? id;
  String? name;
  String? description;
  Null? productType;
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
  String? updatedate;
  int? isLike;
  int? isView;
  int? isWishlist;
  int? bargainId;
  String? bargainPrice;
  String? barginStatus;
  int? cartProductSize;
  String? cartProductQuantity;
  int? isAddedCart;
  int? isBarginProduct;
  List<dynamic>? ratingData;
  int? created_by;

  ProductDetailsData(
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
      this.isLike,
      this.isView,
      this.isWishlist,
      this.bargainId,
      this.bargainPrice,
      this.barginStatus,
      this.cartProductSize,
      this.cartProductQuantity,
      this.isAddedCart,
      this.isBarginProduct,
      this.created_by,
      this.ratingData});

  ProductDetailsData.fromJson(Map<String, dynamic> json) {
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
    isLike = json['isLike'];
    isView = json['isView'];
    isWishlist = json['isWishlist'];
    bargainId = json['bargainId'];
    bargainPrice = json['bargain_price'];
    barginStatus = json['bargin_status'];
    cartProductSize = json['cartProductSize'];
    cartProductQuantity = json['cartProductQuantity'];
    isAddedCart = json['isAddedCart'];
    isBarginProduct = json['isBarginProduct'];
    created_by = json['created_by'];
    // ratingData = json['ratingData'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['product_type'] = productType;
    data['images'] = images;
    data['brand'] = brand;
    data['category_id'] = categoryId;
    data['delivery_time'] = deliveryTime;
    data['delivery_type'] = deliveryType;
    data['terms_condition'] = termsCondition;
    data['total_views'] = totalViews;
    data['total_likes'] = totalLikes;
    data['units'] = units;
    data['regular_price'] = regularPrice;
    data['market_price'] = marketPrice;
    data['total_rating'] = totalRating;
    data['total_wish_list'] = totalWishList;
    data['size'] = size;
    data['company_id'] = companyId;
    data['is_active'] = isActive;
    data['is_deleted'] = isDeleted;
    data['createddate'] = createddate;
    data['updatedate'] = updatedate;
    data['isLike'] = isLike;
    data['isView'] = isView;
    data['isWishlist'] = isWishlist;
    data['bargainId'] = bargainId;
    data['bargain_price'] = bargainPrice;
    data['bargin_status'] = barginStatus;
    data['cartProductSize'] = cartProductSize;
    data['cartProductQuantity'] = cartProductQuantity;
    data['isAddedCart'] = isAddedCart;
    data['isBarginProduct'] = isBarginProduct;
    data['created_by'] = created_by;
    // data['ratingData'] = ratingData;
    return data;
  }
}
