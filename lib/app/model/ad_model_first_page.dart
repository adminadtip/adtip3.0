class AdModelFirstPage {
  String? companyName;
  String? campaignName;
  String? targetGender;
  String? maritalStatus;
  String? targetLowerAge;
  String? targetUpperAge;
  String? targetProfessions;
  String? targetArea;
  String? adwatchPerDay;
  String? adPerdayPay;
  String? adSpendPerDay;
  String? companyId;
  String? adModelId;
  String? createdby;
  String? adStartDate;
  String? adEndDate;
  String? adTime;
  String? adEndTime;
  String? adCustomerTargetPerDay;
  int? id;
  int? firstPageSave;

  AdModelFirstPage(
      {this.companyName,
      this.campaignName,
      this.targetGender,
      this.maritalStatus,
      this.targetLowerAge,
      this.targetUpperAge,
      this.targetProfessions,
      this.targetArea,
      this.adwatchPerDay,
      this.adPerdayPay,
      this.adSpendPerDay,
      this.companyId,
      this.adModelId,
      this.createdby,
      this.adStartDate,
      this.adEndDate,
      this.adTime,
      this.adEndTime,
      this.adCustomerTargetPerDay,
      this.id,
      this.firstPageSave});

  AdModelFirstPage.fromJson(Map<String, dynamic> json) {
    companyName = json['companyName'];
    campaignName = json['campaignName'];
    targetGender = json['targetGender'];
    maritalStatus = json['maritalStatus'];
    targetLowerAge = json['targetLowerAge'];
    targetUpperAge = json['targetUpperAge'];
    targetProfessions = json['targetProfessions'];
    targetArea = json['targetArea'];
    adwatchPerDay = json['adwatchPerDay'];
    adPerdayPay = json['adPerdayPay'];
    adSpendPerDay = json['adSpendPerDay'];
    companyId = json['companyId'];
    adModelId = json['adModelId'];
    createdby = json['createdby'];
    adStartDate = json['adStartDate'];
    adEndDate = json['adEndDate'];
    adTime = json['adTime'];
    adEndTime = json['adEndTime'];
    adCustomerTargetPerDay = json['adCustomerTargetPerDay'];
    id = json['id'];
    firstPageSave = json['firstPageSave'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyName'] = companyName;
    data['campaignName'] = campaignName;
    data['targetGender'] = targetGender;
    data['maritalStatus'] = maritalStatus;
    data['targetLowerAge'] = targetLowerAge;
    data['targetUpperAge'] = targetUpperAge;
    data['targetProfessions'] = targetProfessions;
    data['targetArea'] = targetArea;
    data['adwatchPerDay'] = adwatchPerDay;
    data['adPerdayPay'] = adPerdayPay;
    data['adSpendPerDay'] = adSpendPerDay;
    data['companyId'] = companyId;
    data['adModelId'] = adModelId;
    data['createdby'] = createdby;
    data['adStartDate'] = adStartDate;
    data['adEndDate'] = adEndDate;
    data['adTime'] = adTime;
    data['adEndTime'] = adEndTime;
    data['adCustomerTargetPerDay'] = adCustomerTargetPerDay;
    data['id'] = id;
    data['firstPageSave'] = firstPageSave;
    return data;
  }
}
