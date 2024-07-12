class ProductListModel {
  int? status;
  String? message;
  List<ProductListData>? data;

  ProductListModel({this.status, this.message, this.data});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ProductListData>[];
      json['data'].forEach((v) {
        data!.add(ProductListData.fromJson(v));
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

class ProductListData {
  int? id;
  String? name;
  String? description;
  String? productType;
  String? images;
  String? regularPrice;
  String? marketPrice;
  int? isActive;
  int? createdBy;

  ProductListData(
      {this.id,
      this.name,
      this.description,
      this.productType,
      this.images,
      this.regularPrice,
      this.marketPrice,
      this.createdBy,
      this.isActive});

  ProductListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    productType = json['productType'];
    images = json['images'];
    regularPrice = json['regular_price'];
    marketPrice = json['market_price'];
    isActive = json['isActive'];
    createdBy = json['created_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['productType'] = productType;
    data['images'] = images;
    data['regular_price'] = regularPrice;
    data['market_price'] = marketPrice;
    data['isActive'] = isActive;
    data['created_by'] = createdBy;
    return data;
  }
}
