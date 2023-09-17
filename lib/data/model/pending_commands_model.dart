class PendingCommandData {
  int? id;
  String? command;
  String? commandName;
  String? type;
  bool? isPending;
  String? createdDt;
  String? updatedDt;
  String? meterNo;
  String? meter_Status;

  PendingCommandData(
      {this.id,
        this.command,
        this.commandName,
        this.type,
        this.isPending,
        this.createdDt,
        this.updatedDt,
        this.meter_Status,
        this.meterNo});

  PendingCommandData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    command = json['command'];
    commandName = json['commandName'];
    type = json['type'];
    isPending = json['is_Pending'];
    createdDt = json['created_Dt'];
    updatedDt = json['updated_Dt'];
    meterNo = json['meter_No'];
    meter_Status = json['meter_Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['command'] = command;
    data['commandName'] = commandName;
    data['type'] = type;
    data['is_Pending'] = isPending;
    data['created_Dt'] = createdDt;
    data['updated_Dt'] = updatedDt;
    data['meter_No'] = meterNo;
    data['meter_Status'] = meter_Status;
    return data;
  }
}

class PendingCommandsModel {
  PendingCommandData? data;
  bool? isErrorstate;

  PendingCommandsModel({this.data, this.isErrorstate});

  PendingCommandsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? PendingCommandData.fromJson(json['data']) : null;
    isErrorstate = json['isErrorstate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['isErrorstate'] = isErrorstate;
    return data;
  }
}
