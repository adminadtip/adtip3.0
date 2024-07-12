class LastFillDataModel {
  int? status;
  String? message;
  List<LastFillData>? data;

  LastFillDataModel({this.status, this.message, this.data});

  LastFillDataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LastFillData>[];
      json['data'].forEach((v) {
        data!.add(LastFillData.fromJson(v));
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

class LastFillData {
  int? id;
  String? companyName;
  String? campaignName;
  String? targetGender;
  String? maritalStatus;
  int? targetLowerAge;
  int? targetUpperAge;
  String? targetProfessions;
  String? targetArea;
  int? adTotalPeople;
  int? adCustomerTargetPerDay;
  int? adwatchPerDay;
  int? adPerdayPay;
  int? isFisrtpageSave;
  int? adPerViewPercentage;
  int? adPerPreviewPercentage;
  String? professions;
  String? adView;
  String? adLike;
  String? adStartDate;
  String? adEndDate;
  String? adTime;
  String? adEndTime;
  var adCommentsOn;
  int? isSecondPageSave;
  String? adUploadFilename;
  int? mediaType;
  String? adUploadOriginalFilename;
  int? adAnimationId;
  int? adButtonTextId;
  String? adImageAlignment;
  String? adHeadline;
  String? adFontSize;
  String? adFontBold;
  int? isThirdPageSave;
  String? adDescription;
  String? adWebsiteLink;
  String? adWebsite;
  String? adCompanyLocation;
  String? adTaxNumber;
  String? isForthPageSave;
  String? adPlaceApp;
  String? adOtherPlatform;
  String? adCustomisedQue1;
  String? adCustomisedQue2;
  String? adCustomisedQue3;
  String? adCustomisedQue4;
  String? adRefferal;
  String? adPaymentMode;
  var adOrderValue;
  var adChargesValue;
  var adTax;
  var adTotal;
  String? adCoupon;
  String? isFivePageSave;
  int? adSpendPerDay;
  int? companyId;
  int? adModelId;
  int? createdby;
  int? isActive;
  int? adPauseCountinue;
  String? createddate;
  String? updateddate;
  String? adPauseStatusDate;
  String? modelTypeName;
  int? isView;
  int? isLike;
  int? isFollow;

  String? companyPofileimage;
  String? companyProfileFilename;
  String? companyProfileFilePath;
  String? imagePath;
  String? addUrl;

  LastFillData(
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
      this.isView,
      this.isLike,
      this.isFollow,
      this.companyPofileimage,
      this.companyProfileFilename,
      this.companyProfileFilePath,
      this.imagePath,
      this.addUrl});

  LastFillData.fromJson(Map<String, dynamic> json) {
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
    isView = json['is_view'];
    isLike = json['is_like'];
    isFollow = json['is_follow'];
    companyId = json['companyId'];
    companyName = json['companyName'];
    companyPofileimage = json['companyPofileimage'];
    companyProfileFilename = json['companyProfileFilename'];
    companyProfileFilePath = json['companyProfileFilePath'];
    imagePath = json['imagePath'];
    addUrl = json['addUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['company_name'] = companyName;
    data['campaign_name'] = campaignName;
    data['target_gender'] = targetGender;
    data['marital_status'] = maritalStatus;
    data['target_lower_age'] = targetLowerAge;
    data['target_upper_age'] = targetUpperAge;
    data['target_professions'] = targetProfessions;
    data['target_area'] = targetArea;
    data['ad_total_people'] = adTotalPeople;
    data['ad_customer_target_per_day'] = adCustomerTargetPerDay;
    data['adwatch_per_day'] = adwatchPerDay;
    data['ad_perday_pay'] = adPerdayPay;
    data['is_fisrtpage_save'] = isFisrtpageSave;
    data['ad_per_view_percentage'] = adPerViewPercentage;
    data['ad_per_preview_percentage'] = adPerPreviewPercentage;
    data['professions'] = professions;
    data['ad_view'] = adView;
    data['ad_like'] = adLike;
    data['ad_start_date'] = adStartDate;
    data['ad_end_date'] = adEndDate;
    data['ad_time'] = adTime;
    data['ad_end_time'] = adEndTime;
    data['ad_comments_on'] = adCommentsOn;
    data['is_second_page_save'] = isSecondPageSave;
    data['ad_upload_filename'] = adUploadFilename;
    data['mediaType'] = mediaType;
    data['ad_upload_original_filename'] = adUploadOriginalFilename;
    data['ad_animation_id'] = adAnimationId;
    data['ad_button_text_id'] = adButtonTextId;
    data['ad_image_alignment'] = adImageAlignment;
    data['ad_headline'] = adHeadline;
    data['ad_font_size'] = adFontSize;
    data['ad_font_bold'] = adFontBold;
    data['is_third_page_save'] = isThirdPageSave;
    data['ad_description'] = adDescription;
    data['ad_website_link'] = adWebsiteLink;
    data['ad_website'] = adWebsite;
    data['ad_company_location'] = adCompanyLocation;
    data['ad_tax_number'] = adTaxNumber;
    data['is_forth_page_save'] = isForthPageSave;
    data['ad_place_app'] = adPlaceApp;
    data['ad_other_platform'] = adOtherPlatform;
    data['ad_customised_que1'] = adCustomisedQue1;
    data['ad_customised_que2'] = adCustomisedQue2;
    data['ad_customised_que3'] = adCustomisedQue3;
    data['ad_customised_que4'] = adCustomisedQue4;
    data['ad_refferal'] = adRefferal;
    data['ad_payment_mode'] = adPaymentMode;
    data['ad_order_value'] = adOrderValue;
    data['ad_charges_value'] = adChargesValue;
    data['ad_tax'] = adTax;
    data['ad_total'] = adTotal;
    data['ad_coupon'] = adCoupon;
    data['is_five_page_save'] = isFivePageSave;
    data['ad_spend_per_day'] = adSpendPerDay;
    data['company_id'] = companyId;
    data['ad_model_id'] = adModelId;
    data['createdby'] = createdby;
    data['is_active'] = isActive;
    data['adPauseCountinue'] = adPauseCountinue;
    data['createddate'] = createddate;
    data['updateddate'] = updateddate;
    data['ad_pause_status_date'] = adPauseStatusDate;
    data['modelTypeName'] = modelTypeName;
    data['is_view'] = isView;
    data['is_like'] = isLike;
    data['is_follow'] = isFollow;
    data['companyId'] = companyId;
    data['companyName'] = companyName;
    data['companyPofileimage'] = companyPofileimage;
    data['companyProfileFilename'] = companyProfileFilename;
    data['companyProfileFilePath'] = companyProfileFilePath;
    data['imagePath'] = imagePath;
    data['addUrl'] = addUrl;
    return data;
  }
}
