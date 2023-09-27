class DevicesListModel {
  List<DeviceListValue>? value;

  DevicesListModel({this.value});

  DevicesListModel.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      value = <DeviceListValue>[];
      json['value'].forEach((v) {
        value!.add(DeviceListValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) {
      data['value'] = value!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DeviceListValue {
  int? id;
  String? deviceNumber;
  String? deviceStatus;
  String? lastConnectionDate;
  String? lastReadingDate;
  String? lastReadingValue;
  String? categoryName;
  String? modelName;
  String? image;
  String? valveStatus;
  int? device_model_id;

  DeviceListValue(
      {this.id,
        this.deviceNumber,
        this.deviceStatus,
        this.lastConnectionDate,
        this.lastReadingDate,
        this.lastReadingValue,
        this.categoryName,
        this.modelName,
        this.image,
        this.device_model_id,
        this.valveStatus});

  DeviceListValue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    deviceNumber = json['device_number'];
    deviceStatus = json['device_status'];
    lastConnectionDate = json['last_connection_date'];
    lastReadingDate = json['last_reading_date'];
    lastReadingValue = json['last_reading_value'];
    categoryName = json['category_name'];
    modelName = json['model_name'];
    device_model_id = json['device_model_id'];
    valveStatus = json['valve_status'];
    image = json['img_Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['device_number'] = deviceNumber;
    data['device_status'] = deviceStatus;
    data['last_connection_date'] = lastConnectionDate;
    data['last_reading_date'] = lastReadingDate;
    data['last_reading_value'] = lastReadingValue;
    data['category_name'] = categoryName;
    data['model_name'] = modelName;
    data['valve_status'] = valveStatus;
    data['img_Url'] = image;
    return data;
  }
}
