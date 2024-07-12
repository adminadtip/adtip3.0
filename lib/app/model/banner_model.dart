class Bannerlistmodel {
  int? status;
  String? message;
  List<BannerData>? data;

  Bannerlistmodel({this.status, this.message, this.data});

  Bannerlistmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <BannerData>[];
      json['data'].forEach((v) {
        data!.add( BannerData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['status'] = status;
    data['message'] =message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BannerData {
  var id;
  String? companyName;
  String? campaignName;
  String? targetGender;
  String? maritalStatus;
 var targetLowerAge;
  var targetUpperAge;
  String? targetProfessions;
  String? targetArea;
  var adTotalPeople;
  var adCustomerTargetPerDay;
  var adwatchPerDay;
  var adPerdayPay;
 var isFisrtpageSave;
 var adPerViewPercentage;
  var adPerPreviewPercentage;
 var professions;
  var adView;
 var adLike;
  String? adStartDate;
  String? adEndDate;
  String? adTime;
  String? adEndTime;
  var adCommentsOn;
  var isSecondPageSave;
  String? adUploadFilename;
  var mediaType;
  String? adUploadOriginalFilename;
 var adAnimationId;
  var adButtonTextId;
  var adImageAlignment;
  var adHeadline;
  var adFontSize;
  var adFontBold;
  var isThirdPageSave;
  String? adDescription;
  String? adWebsiteLink;
  String? adWebsite;
  String? adCompanyLocation;
  String? adTaxNumber;
 var isForthPageSave;
  String? adPlaceApp;
  var adOtherPlatform;
  var adCustomisedQue1;
  var adCustomisedQue2;
  var adCustomisedQue3;
 var adCustomisedQue4;
  String? adRefferal;
  String? adPaymentMode;
  var adOrderValue;
  var adChargesValue;
  var adTax;
  var adTotal;
  String? adCoupon;
 var isFivePageSave;
  var adSpendPerDay;
  var companyId;
  var adModelId;
  var createdby;
  var isActive;
  var adPauseCountinue;
  String? createddate;
  String? updateddate;
  var adPauseStatusDate;
  String? modelTypeName;
  String? adUrl;
  var isView;
  var isLike;
  String? imagePath;

  BannerData(
      {this.id,
      this.companyName,
      this.campaignName,
      this.targetGender,
      this.maritalStatus,
      this.targetLowerAge,
      this.targetUpperAge,
      this.targetProfessions,
      this.targetArea,
      this.adTotalPeople,
      this.adCustomerTargetPerDay,
      this.adwatchPerDay,
      this.adPerdayPay,
      this.isFisrtpageSave,
      this.adPerViewPercentage,
      this.adPerPreviewPercentage,
      this.professions,
      this.adView,
      this.adLike,
      this.adStartDate,
      this.adEndDate,
      this.adTime,
      this.adEndTime,
      this.adCommentsOn,
      this.isSecondPageSave,
      this.adUploadFilename,
      this.mediaType,
      this.adUploadOriginalFilename,
      this.adAnimationId,
      this.adButtonTextId,
      this.adImageAlignment,
      this.adHeadline,
      this.adFontSize,
      this.adFontBold,
      this.isThirdPageSave,
      this.adDescription,
      this.adWebsiteLink,
      this.adWebsite,
      this.adCompanyLocation,
      this.adTaxNumber,
      this.isForthPageSave,
      this.adPlaceApp,
      this.adOtherPlatform,
      this.adCustomisedQue1,
      this.adCustomisedQue2,
      this.adCustomisedQue3,
      this.adCustomisedQue4,
      this.adRefferal,
      this.adPaymentMode,
      this.adOrderValue,
      this.adChargesValue,
      this.adTax,
      this.adTotal,
      this.adCoupon,
      this.isFivePageSave,
      this.adSpendPerDay,
      this.companyId,
      this.adModelId,
      this.createdby,
      this.isActive,
      this.adPauseCountinue,
      this.createddate,
      this.updateddate,
      this.adPauseStatusDate,
      this.modelTypeName,
      this.adUrl,
      this.isView,
      this.isLike,
      this.imagePath});

  BannerData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['company_name'];
    campaignName = json['campaign_name'];
    targetGender = json['target_gender'];
    maritalStatus = json['marital_status'];
    targetLowerAge = json['target_lower_age'];
    targetUpperAge = json['target_upper_age'];
    targetProfessions = json['target_professions'];
    targetArea = json['target_area'];
    adTotalPeople = json['ad_total_people'];
    adCustomerTargetPerDay = json['ad_customer_target_per_day'];
    adwatchPerDay = json['adwatch_per_day'];
    adPerdayPay = json['ad_perday_pay'];
    isFisrtpageSave = json['is_fisrtpage_save'];
    adPerViewPercentage = json['ad_per_view_percentage'];
    adPerPreviewPercentage = json['ad_per_preview_percentage'];
    professions = json['professions'];
    adView = json['ad_view'];
    adLike = json['ad_like'];
    adStartDate = json['ad_start_date'];
    adEndDate = json['ad_end_date'];
    adTime = json['ad_time'];
    adEndTime = json['ad_end_time'];
    adCommentsOn = json['ad_comments_on'];
    isSecondPageSave = json['is_second_page_save'];
    adUploadFilename = json['ad_upload_filename'];
    mediaType = json['mediaType'];
    adUploadOriginalFilename = json['ad_upload_original_filename'];
    adAnimationId = json['ad_animation_id'];
    adButtonTextId = json['ad_button_text_id'];
    adImageAlignment = json['ad_image_alignment'];
    adHeadline = json['ad_headline'];
    adFontSize = json['ad_font_size'];
    adFontBold = json['ad_font_bold'];
    isThirdPageSave = json['is_third_page_save'];
    adDescription = json['ad_description'];
    adWebsiteLink = json['ad_website_link'];
    adWebsite = json['ad_website'];
    adCompanyLocation = json['ad_company_location'];
    adTaxNumber = json['ad_tax_number'];
    isForthPageSave = json['is_forth_page_save'];
    adPlaceApp = json['ad_place_app'];
    adOtherPlatform = json['ad_other_platform'];
    adCustomisedQue1 = json['ad_customised_que1'];
    adCustomisedQue2 = json['ad_customised_que2'];
    adCustomisedQue3 = json['ad_customised_que3'];
    adCustomisedQue4 = json['ad_customised_que4'];
    adRefferal = json['ad_refferal'];
    adPaymentMode = json['ad_payment_mode'];
    adOrderValue = json['ad_order_value'];
    adChargesValue = json['ad_charges_value'];
    adTax = json['ad_tax'];
    adTotal = json['ad_total'];
    adCoupon = json['ad_coupon'];
    isFivePageSave = json['is_five_page_save'];
    adSpendPerDay = json['ad_spend_per_day'];
    companyId = json['company_id'];
    adModelId = json['ad_model_id'];
    createdby = json['createdby'];
    isActive = json['is_active'];
    adPauseCountinue = json['adPauseCountinue'];
    createddate = json['createddate'];
    updateddate = json['updateddate'];
    adPauseStatusDate = json['ad_pause_status_date'];
    modelTypeName = json['modelTypeName'];
    adUrl = json['adUrl'];
    isView = json['is_view'];
    isLike = json['is_like'];
    imagePath = json['imagePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_name'] = this.companyName;
    data['campaign_name'] = this.campaignName;
    data['target_gender'] = this.targetGender;
    data['marital_status'] = this.maritalStatus;
    data['target_lower_age'] = this.targetLowerAge;
    data['target_upper_age'] = this.targetUpperAge;
    data['target_professions'] = this.targetProfessions;
    data['target_area'] = this.targetArea;
    data['ad_total_people'] = this.adTotalPeople;
    data['ad_customer_target_per_day'] = this.adCustomerTargetPerDay;
    data['adwatch_per_day'] = this.adwatchPerDay;
    data['ad_perday_pay'] = this.adPerdayPay;
    data['is_fisrtpage_save'] = this.isFisrtpageSave;
    data['ad_per_view_percentage'] = this.adPerViewPercentage;
    data['ad_per_preview_percentage'] = this.adPerPreviewPercentage;
    data['professions'] = this.professions;
    data['ad_view'] = this.adView;
    data['ad_like'] = this.adLike;
    data['ad_start_date'] = this.adStartDate;
    data['ad_end_date'] = this.adEndDate;
    data['ad_time'] = this.adTime;
    data['ad_end_time'] = this.adEndTime;
    data['ad_comments_on'] = this.adCommentsOn;
    data['is_second_page_save'] = this.isSecondPageSave;
    data['ad_upload_filename'] = this.adUploadFilename;
    data['mediaType'] = this.mediaType;
    data['ad_upload_original_filename'] = this.adUploadOriginalFilename;
    data['ad_animation_id'] = this.adAnimationId;
    data['ad_button_text_id'] = this.adButtonTextId;
    data['ad_image_alignment'] = this.adImageAlignment;
    data['ad_headline'] = this.adHeadline;
    data['ad_font_size'] = this.adFontSize;
    data['ad_font_bold'] = this.adFontBold;
    data['is_third_page_save'] = this.isThirdPageSave;
    data['ad_description'] = this.adDescription;
    data['ad_website_link'] = this.adWebsiteLink;
    data['ad_website'] = this.adWebsite;
    data['ad_company_location'] = this.adCompanyLocation;
    data['ad_tax_number'] = this.adTaxNumber;
    data['is_forth_page_save'] = this.isForthPageSave;
    data['ad_place_app'] = this.adPlaceApp;
    data['ad_other_platform'] = this.adOtherPlatform;
    data['ad_customised_que1'] = this.adCustomisedQue1;
    data['ad_customised_que2'] = this.adCustomisedQue2;
    data['ad_customised_que3'] = this.adCustomisedQue3;
    data['ad_customised_que4'] = this.adCustomisedQue4;
    data['ad_refferal'] = this.adRefferal;
    data['ad_payment_mode'] = this.adPaymentMode;
    data['ad_order_value'] = this.adOrderValue;
    data['ad_charges_value'] = this.adChargesValue;
    data['ad_tax'] = this.adTax;
    data['ad_total'] = this.adTotal;
    data['ad_coupon'] = this.adCoupon;
    data['is_five_page_save'] = this.isFivePageSave;
    data['ad_spend_per_day'] = this.adSpendPerDay;
    data['company_id'] = this.companyId;
    data['ad_model_id'] = this.adModelId;
    data['createdby'] = this.createdby;
    data['is_active'] = this.isActive;
    data['adPauseCountinue'] = this.adPauseCountinue;
    data['createddate'] = this.createddate;
    data['updateddate'] = this.updateddate;
    data['ad_pause_status_date'] = this.adPauseStatusDate;
    data['modelTypeName'] = this.modelTypeName;
    data['adUrl'] = this.adUrl;
    data['is_view'] = this.isView;
    data['is_like'] = this.isLike;
    data['imagePath'] = this.imagePath;
    return data;
  }
}
