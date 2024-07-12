class CouponModel {
  int? status;
  String? message;
  List<CouponModelData>? data;

  CouponModel({this.status, this.message, this.data});

  CouponModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <CouponModelData>[];
      json['data'].forEach((v) {
        data!.add(CouponModelData.fromJson(v));
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

class CouponModelData {
  int? id;
  String? couponCode;
  Null? couponModel;
  String? coupanStartdate;
  String? coupanEnddate;
  int? isActive;
  String? couponDesc;
  int? couponDiscount;
  String? couponType;

  CouponModelData(
      {this.id,
      this.couponCode,
      this.couponModel,
      this.coupanStartdate,
      this.coupanEnddate,
      this.isActive,
      this.couponDesc,
      this.couponDiscount,
      this.couponType});

  CouponModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    couponCode = json['coupon_code'];
    couponModel = json['coupon_model'];
    coupanStartdate = json['coupan_startdate'];
    coupanEnddate = json['coupan_enddate'];
    isActive = json['isActive'];
    couponDesc = json['coupon_desc'];
    couponDiscount = json['coupon_discount'];
    couponType = json['coupon_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['coupon_code'] = couponCode;
    data['coupon_model'] = couponModel;
    data['coupan_startdate'] = coupanStartdate;
    data['coupan_enddate'] = coupanEnddate;
    data['isActive'] = isActive;
    data['coupon_desc'] = couponDesc;
    data['coupon_discount'] = couponDiscount;
    data['coupon_type'] = couponType;
    return data;
  }
}
