class GetCommandsListModel {
  List<CommandsListValue>? value;

  GetCommandsListModel({this.value});

  GetCommandsListModel.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      value = <CommandsListValue>[];
      json['value'].forEach((v) {
        value!.add(CommandsListValue.fromJson(v));
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

class CommandsListValue {
  int? id;
  int? deviceId;
  bool? isPending;
  String? createdDate;
  String? updatedDate;
  String? commandName;

  CommandsListValue(
      {this.id,
        this.deviceId,
        this.isPending,
        this.createdDate,
        this.updatedDate,
        this.commandName});

  CommandsListValue.fromJson(Map<String, dynamic> json) {
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
