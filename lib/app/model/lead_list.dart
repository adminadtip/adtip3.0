class LeadListModel {
  int? status;
  String? message;
  Data? data;

  LeadListModel({this.status, this.message, this.data});

  LeadListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<IsLike>? isLike;
  List<IsLike>? isView;
  List<IsLike>? isFollow;

  Data({this.isLike, this.isView, this.isFollow});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['isLike'] != null) {
      isLike = <IsLike>[];
      json['isLike'].forEach((v) {
        isLike!.add(IsLike.fromJson(v));
      });
    }
    if (json['isView'] != null) {
      isView = <IsLike>[];
      json['isView'].forEach((v) {
        isView!.add(IsLike.fromJson(v));
      });
    }
    if (json['isFollow'] != null) {
      isFollow = <IsLike>[];
      json['isFollow'].forEach((v) {
        isFollow!.add(IsLike.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.isLike != null) {
      data['isLike'] = this.isLike!.map((v) => v.toJson()).toList();
    }
    if (this.isView != null) {
      data['isView'] = this.isView!.map((v) => v.toJson()).toList();
    }
    if (this.isFollow != null) {
      data['isFollow'] = this.isFollow!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IsLike {
  int? count;
  String? date;

  IsLike({this.count, this.date});

  IsLike.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['date'] = this.date;
    return data;
  }
}
