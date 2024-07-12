class ProfessionListModel {
  int? status;
  String? message;
  List<ProfessionListData>? data;

  ProfessionListModel({this.status, this.message, this.data});

  ProfessionListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ProfessionListData>[];
      json['data'].forEach((v) {
        data!.add(ProfessionListData.fromJson(v));
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

class ProfessionListData {
  int? id;
  String? name;

  ProfessionListData({this.id, this.name});

  ProfessionListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
