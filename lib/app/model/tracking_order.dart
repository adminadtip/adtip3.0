class TrackingModel {
  int? status;
  String? message;
  List<TrackingData>? data;

  TrackingModel({this.status, this.message, this.data});

  TrackingModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <TrackingData>[];
      json['data'].forEach((v) {
        data!.add(TrackingData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TrackingData {
  int? id;
  String? companyName;
  String? campaignName;
  int? adTotalPeople;
  int? adCustomerTargetPerDay;
  int? adwatchPerDay;
  String? adStartDate;
  String? adEndDate;
  String? adUploadFilename;
  int? mediaType;
  String? adUploadOriginalFilename;
  String? adDescription;
  dynamic adOrderValue;
  dynamic adTotal;
  dynamic adSpendPerDay;
  dynamic adModelId;
  dynamic createdby;
  dynamic isActive;
  dynamic adPauseCountinue;
  dynamic createddate;
  dynamic updateddate;
  dynamic adPauseStatusDate;
  dynamic modelTypeName;
  dynamic adOrdered;
  dynamic adminApproval;
  dynamic campaingStartNow;
  dynamic reachSuccessfull;
  dynamic reachPending;
  dynamic orderSuccessfull;
  dynamic companyProfileFilePath;
  dynamic imagePath;
  dynamic addUrl;
  dynamic totalLikes;
  dynamic totalViews;
  dynamic perLeadCost;
  dynamic adPerViewCost;
  dynamic adPerLikeCost;
  dynamic totalDays;
  dynamic totalDaysRemaining;
  dynamic totalAvailableBalance;
  dynamic noOfDaysCompleted;
  TrackingData(
      {this.id,
      this.companyName,
      this.campaignName,
      this.adTotalPeople,
      this.adCustomerTargetPerDay,
      this.adwatchPerDay,
      this.adStartDate,
      this.adEndDate,
      this.adUploadFilename,
      this.mediaType,
      this.adUploadOriginalFilename,
      this.adDescription,
      this.adOrderValue,
      this.adTotal,
      this.adSpendPerDay,
      this.adModelId,
      this.createdby,
      this.isActive,
      this.adPauseCountinue,
      this.createddate,
      this.updateddate,
      this.adPauseStatusDate,
      this.modelTypeName,
      this.adOrdered,
      this.adminApproval,
      this.campaingStartNow,
      this.reachSuccessfull,
      this.reachPending,
      this.orderSuccessfull,
      this.companyProfileFilePath,
      this.imagePath,
      this.totalLikes,
      this.totalViews,
      this.perLeadCost,
      this.adPerViewCost,
      this.adPerLikeCost,
      this.totalDays,
      this.totalAvailableBalance,
      this.totalDaysRemaining,
      this.noOfDaysCompleted,
      this.addUrl});

  TrackingData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['company_name'];
    campaignName = json['campaign_name'];
    adTotalPeople = json['ad_total_people'];
    adCustomerTargetPerDay = json['ad_customer_target_per_day'];
    adwatchPerDay = json['adwatch_per_day'];
    adStartDate = json['ad_start_date'];
    adEndDate = json['ad_end_date'];
    adUploadFilename = json['ad_upload_filename'];
    mediaType = json['mediaType'];
    adUploadOriginalFilename = json['ad_upload_original_filename'];
    adDescription = json['ad_description'];
    adOrderValue = json['ad_order_value'];
    adTotal = json['ad_total'];
    adSpendPerDay = json['ad_spend_per_day'];
    adModelId = json['ad_model_id'];
    createdby = json['createdby'];
    isActive = json['is_active'];
    adPauseCountinue = json['adPauseCountinue'];
    createddate = json['createddate'];
    updateddate = json['updateddate'];
    adPauseStatusDate = json['ad_pause_status_date'];
    modelTypeName = json['modelTypeName'];
    adOrdered = json['adOrdered'];
    adminApproval = json['adminApproval'];
    campaingStartNow = json['campaingStartNow'];
    reachSuccessfull = json['reachSuccessfull'];
    reachPending = json['reachPending'];
    orderSuccessfull = json['orderSuccessfull'];
    companyProfileFilePath = json['companyProfileFilePath'];
    imagePath = json['imagePath'];
    addUrl = json['addUrl'];
    totalLikes = json['totalLikes'];
    totalViews = json['totalViews'];
    perLeadCost = json['ad_perday_pay'];
    adPerViewCost = json['adPerViewCost'];
    adPerLikeCost = json['adPerLikeCost'];
    totalDays = json['totalDays'];
    totalDaysRemaining = json['noOfDaysRemaining'];
    totalAvailableBalance = json['totalAvailableBalance'];
    noOfDaysCompleted = json['noOfDaysCompleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['company_name'] = companyName;
    data['campaign_name'] = campaignName;
    data['ad_total_people'] = adTotalPeople;
    data['ad_customer_target_per_day'] = adCustomerTargetPerDay;
    data['adwatch_per_day'] = adwatchPerDay;
    data['ad_start_date'] = adStartDate;
    data['ad_end_date'] = adEndDate;
    data['ad_upload_filename'] = adUploadFilename;
    data['mediaType'] = mediaType;
    data['ad_upload_original_filename'] = adUploadOriginalFilename;
    data['ad_description'] = adDescription;
    data['ad_order_value'] = adOrderValue;
    data['ad_total'] = adTotal;
    data['ad_spend_per_day'] = adSpendPerDay;
    data['ad_model_id'] = adModelId;
    data['createdby'] = createdby;
    data['is_active'] = isActive;
    data['adPauseCountinue'] = adPauseCountinue;
    data['createddate'] = createddate;
    data['updateddate'] = updateddate;
    data['ad_pause_status_date'] = adPauseStatusDate;
    data['modelTypeName'] = modelTypeName;
    data['adOrdered'] = adOrdered;
    data['adminApproval'] = adminApproval;
    data['campaingStartNow'] = campaingStartNow;
    data['reachSuccessfull'] = reachSuccessfull;
    data['reachPending'] = reachPending;
    data['orderSuccessfull'] = orderSuccessfull;
    data['companyProfileFilePath'] = companyProfileFilePath;
    data['imagePath'] = imagePath;
    data['addUrl'] = addUrl;
    return data;
  }
}
