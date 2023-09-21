class DeviceDetailsModel {
  Value? value;

  DeviceDetailsModel({this.value});

  DeviceDetailsModel.fromJson(Map<String, dynamic> json) {
    value = json['value'] != null ? Value.fromJson(json['value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) {
      data['value'] = value!.toJson();
    }
    return data;
  }
}

class Value {
  int? id;
  String? deviceNumber;
  String? deviceStatus;
  String? lastConnectionDate;
  String? lastReadingDate;
  num? lastReadingValue;
  num? deviceCategoryId;
  num? deviceModelId;
  int? valveStatusId;
  String? categoryName;
  String? modelName;
  String? valveStatus;
  LastCommand? lastCommand;

  Value(
      {this.id,
        this.deviceNumber,
        this.deviceStatus,
        this.lastConnectionDate,
        this.lastReadingDate,
        this.lastReadingValue,
        this.deviceCategoryId,
        this.deviceModelId,
        this.valveStatusId,
        this.categoryName,
        this.modelName,
        this.valveStatus,
        this.lastCommand});

  Value.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    deviceNumber = json['device_number'];
    deviceStatus = json['device_status'];
    lastConnectionDate = json['last_connection_date'];
    lastReadingDate = json['last_reading_date'];
    lastReadingValue = json['last_reading_value'];
    deviceCategoryId = json['device_category_id'];
    deviceModelId = json['device_model_id'];
    valveStatusId = json['valve_status_id'];
    categoryName = json['category_name'];
    modelName = json['model_name'];
    valveStatus = json['valve_status'];
    lastCommand = json['last_command'] != null
        ? LastCommand.fromJson(json['last_command'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['device_number'] = deviceNumber;
    data['device_status'] = deviceStatus;
    data['last_connection_date'] = lastConnectionDate;
    data['last_reading_date'] = lastReadingDate;
    data['last_reading_value'] = lastReadingValue;
    data['device_category_id'] = deviceCategoryId;
    data['device_model_id'] = deviceModelId;
    data['valve_status_id'] = valveStatusId;
    data['category_name'] = categoryName;
    data['model_name'] = modelName;
    data['valve_status'] = valveStatus;
    if (lastCommand != null) {
      data['last_command'] = lastCommand!.toJson();
    }
    return data;
  }
}

class LastCommand {
  int? id;
  int? deviceId;
  bool? isPending;
  String? createdDate;
  String? updatedDate;
  String? commandName;

  LastCommand(
      {this.id,
        this.deviceId,
        this.isPending,
        this.createdDate,
        this.updatedDate,
        this.commandName});

  LastCommand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    deviceId = json['device_id'];
    isPending = json['is_pending'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    commandName = json['command_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['device_id'] = deviceId;
    data['is_pending'] = isPending;
    data['created_date'] = createdDate;
    data['updated_date'] = updatedDate;
    data['command_name'] = commandName;
    return data;
  }
}
