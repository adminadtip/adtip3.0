class AdminModel {
  int? status;
  String? message;
  List<AdminData>? data;

  AdminModel({this.status, this.message, this.data});

  AdminModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <AdminData>[];
      json['data'].forEach((v) {
        data!.add(AdminData.fromJson(v));
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

class AdminData {
  int? id;
  String? firstName;
  String? lastName;
  String? emailId;
  String? mobileNumber;
  String? accessType;
  int? onlineStatus;

  AdminData(
      {this.id,
      this.firstName,
      this.lastName,
      this.emailId,
      this.mobileNumber,
      this.accessType,
      this.onlineStatus});

  AdminData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    emailId = json['emailId'];
    mobileNumber = json['mobileNumber'];
    accessType = json['accessType'];
    onlineStatus = json['onlineStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['emailId'] = emailId;
    data['mobileNumber'] = mobileNumber;
    data['accessType'] = accessType;
    data['onlineStatus'] = onlineStatus;
    return data;
  }
}
