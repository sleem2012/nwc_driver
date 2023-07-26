class RejectReasonsModel {
  List<RejectValue>? value;

  RejectReasonsModel({this.value});

  RejectReasonsModel.fromJson(Map<String, dynamic> json) {
    if (json['Value'] != null) {
      value = <RejectValue>[];
      json['Value'].forEach((v) {
        value!.add(RejectValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) {
      data['Value'] = value!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RejectValue {
  int? id;
  String? name;
  String? integrationId;

  RejectValue({this.id, this.name, this.integrationId});

  RejectValue.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    integrationId = json['IntegrationId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['IntegrationId'] = integrationId;
    return data;
  }
}
