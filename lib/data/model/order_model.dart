// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderModel {
  OrderValue? value;

  OrderModel({this.value});

  OrderModel.fromJson(Map<String, dynamic> json) {
    value = json['Value'] != null ? OrderValue.fromJson(json['Value']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) {
      data['Value'] = value!.toJson();
    }
    return data;
  }
}

class OrderValue {
  List<OrderList>? result;
  int? totalCount;

  OrderValue({this.result, this.totalCount});

  OrderValue.fromJson(Map<String, dynamic> json) {
    if (json['Result'] != null) {
      result = <OrderList>[];
      json['Result'].forEach((v) {
        result!.add(OrderList.fromJson(v));
      });
    }
    totalCount = json['TotalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['Result'] = result!.map((v) => v.toJson()).toList();
    }
    data['TotalCount'] = totalCount;
    return data;
  }

  OrderValue copyWith({
    List<OrderList>? result,
    int? totalCount,
  }) {
    return OrderValue(
      result: result ?? this.result,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}

class OrderList {
  int? workOrderID;
  String? orderNumber;
  String? requestTime;
  bool? isAssigned;
  String? customerName;
  String? customerCode;
  String? customerMobile;
  String? customerAddress;
  int? customerLocationClassID;
  String? className;
  int? priorityID;
  String? priorityName;
  int? zoneID;
  String? zoneName;
  int? cityID;
  String? cityName;
  int? orderQuantity;
  String? scheduledDeliveryTime;
  String? stationName;
  String? serviceType;
  String? tankerPlateNo;
  int? accessoryID;
  String? accessoryNames;
  int? assignedDriverID;
  int? assignedStationID;
  int? landmarkID;
  int? assignedVehicleID;
  String? vehicleCodePlateNo;
  int? customerLocationID;
  int? serviceTypeID;
  int? customerID;
  int? lastStatusID;
  String? lastStatusName;
  int? lastStatusBy;
  String? lastStatusByUserName;
  String? customerLocationLng;
  String? customerLocationLat;
  List<AccessoryDTOs>? accessoryDTOs;
  String? vehicleStatusName;
  int? vehicleCapacity;
  int? vehicleCapacityUnit;
  String? lastStatusTime;
  String? lastStatusTimeVehicle;
  String? confirmationCode;
  int? costBeforVAT;
  int? vAT;
  int? costAfterVAT;
  String? paymentStatusAr;
  String? paymentStatusEn;

  OrderList({
    this.workOrderID,
    this.orderNumber,
    this.requestTime,
    this.isAssigned,
    this.customerName,
    this.customerCode,
    this.customerMobile,
    this.customerAddress,
    this.customerLocationClassID,
    this.className,
    this.priorityID,
    this.priorityName,
    this.zoneID,
    this.zoneName,
    this.cityID,
    this.cityName,
    this.orderQuantity,
    this.scheduledDeliveryTime,
    this.stationName,
    this.serviceType,
    this.tankerPlateNo,
    this.accessoryID,
    this.accessoryNames,
    this.assignedDriverID,
    this.assignedStationID,
    this.landmarkID,
    this.assignedVehicleID,
    this.vehicleCodePlateNo,
    this.customerLocationID,
    this.serviceTypeID,
    this.customerID,
    this.lastStatusID,
    this.lastStatusName,
    this.lastStatusBy,
    this.lastStatusByUserName,
    this.customerLocationLng,
    this.customerLocationLat,
    this.accessoryDTOs,
    this.vehicleStatusName,
    this.vehicleCapacity,
    this.vehicleCapacityUnit,
    this.lastStatusTime,
    this.lastStatusTimeVehicle,
    this.confirmationCode,
    this.costBeforVAT,
    this.vAT,
    this.costAfterVAT,
    this.paymentStatusAr,
    this.paymentStatusEn,
  });

  OrderList.fromJson(Map<String, dynamic> json) {
    workOrderID = json['WorkOrderID'];
    orderNumber = json['OrderNumber'];
    requestTime = json['RequestTime'];
    isAssigned = json['IsAssigned'];
    customerName = json['CustomerName'];
    customerCode = json['CustomerCode'];
    customerMobile = json['CustomerMobile'];
    customerAddress = json['CustomerAddress'];
    customerLocationClassID = json['CustomerLocationClassID'];
    className = json['ClassName'];
    priorityID = json['PriorityID'];
    priorityName = json['PriorityName'];
    zoneID = json['ZoneID'];
    zoneName = json['ZoneName'];
    cityID = json['CityID'];
    cityName = json['CityName'];
    orderQuantity = json['OrderQuantity'];
    scheduledDeliveryTime = json['ScheduledDeliveryTime'];
    stationName = json['StationName'];
    serviceType = json['ServiceType'];
    tankerPlateNo = json['TankerPlateNo'];
    accessoryID = json['AccessoryID'];
    accessoryNames = json['AccessoryNames'];
    assignedDriverID = json['AssignedDriverID'];
    assignedStationID = json['AssignedStationID'];
    landmarkID = json['LandmarkID'];
    assignedVehicleID = json['AssignedVehicleID'];
    vehicleCodePlateNo = json['VehicleCodePlateNo'];
    customerLocationID = json['CustomerLocationID'];
    serviceTypeID = json['ServiceTypeID'];
    customerID = json['CustomerID'];
    lastStatusID = json['LastStatusID'];
    lastStatusName = json['LastStatusName'];
    lastStatusBy = json['LastStatusBy'];
    lastStatusByUserName = json['LastStatusByUserName'];
    customerLocationLng = json['customerLocationLng'];
    customerLocationLat = json['customerLocationLat'];
    if (json['AccessoryDTOs'] != null) {
      accessoryDTOs = <AccessoryDTOs>[];
      json['AccessoryDTOs'].forEach((v) {
        accessoryDTOs!.add(AccessoryDTOs.fromJson(v));
      });
    }
    vehicleStatusName = json['VehicleStatusName'];
    vehicleCapacity = json['VehicleCapacity'];
    vehicleCapacityUnit = json['VehicleCapacityUnit'];
    lastStatusTime = json['LastStatusTime'];
    lastStatusTimeVehicle = json['LastStatusTimeVehicle'];
    confirmationCode = json['ConfirmationCode'];
    costBeforVAT = json['CostBeforVAT'];
    vAT = json['VAT'];
    costAfterVAT = json['CostAfterVAT'];
    paymentStatusAr = json['PaymentStatusAr'];
    paymentStatusEn = json['PaymentStatusEn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['WorkOrderID'] = workOrderID;
    data['OrderNumber'] = orderNumber;
    data['RequestTime'] = requestTime;
    data['IsAssigned'] = isAssigned;
    data['CustomerName'] = customerName;
    data['CustomerCode'] = customerCode;
    data['CustomerMobile'] = customerMobile;
    data['CustomerAddress'] = customerAddress;
    data['CustomerLocationClassID'] = customerLocationClassID;
    data['ClassName'] = className;
    data['PriorityID'] = priorityID;
    data['PriorityName'] = priorityName;
    data['ZoneID'] = zoneID;
    data['ZoneName'] = zoneName;
    data['CityID'] = cityID;
    data['CityName'] = cityName;
    data['OrderQuantity'] = orderQuantity;
    data['ScheduledDeliveryTime'] = scheduledDeliveryTime;
    data['StationName'] = stationName;
    data['ServiceType'] = serviceType;
    data['TankerPlateNo'] = tankerPlateNo;
    data['AccessoryID'] = accessoryID;
    data['AccessoryNames'] = accessoryNames;
    data['AssignedDriverID'] = assignedDriverID;
    data['AssignedStationID'] = assignedStationID;
    data['LandmarkID'] = landmarkID;
    data['AssignedVehicleID'] = assignedVehicleID;
    data['VehicleCodePlateNo'] = vehicleCodePlateNo;
    data['CustomerLocationID'] = customerLocationID;
    data['ServiceTypeID'] = serviceTypeID;
    data['CustomerID'] = customerID;
    data['LastStatusID'] = lastStatusID;
    data['LastStatusName'] = lastStatusName;
    data['LastStatusBy'] = lastStatusBy;
    data['LastStatusByUserName'] = lastStatusByUserName;
    data['customerLocationLng'] = customerLocationLng;
    data['customerLocationLat'] = customerLocationLat;
    if (accessoryDTOs != null) {
      data['AccessoryDTOs'] = accessoryDTOs!.map((v) => v.toJson()).toList();
    }
    data['VehicleStatusName'] = vehicleStatusName;
    data['VehicleCapacity'] = vehicleCapacity;
    data['VehicleCapacityUnit'] = vehicleCapacityUnit;
    data['LastStatusTime'] = lastStatusTime;
    data['LastStatusTimeVehicle'] = lastStatusTimeVehicle;
    data['ConfirmationCode'] = confirmationCode;
    data['CostBeforVAT'] = costBeforVAT;
    data['VAT'] = vAT;
    data['CostAfterVAT'] = costAfterVAT;
    data['PaymentStatusAr'] = paymentStatusAr;
    data['PaymentStatusEn'] = paymentStatusEn;
    return data;
  }

  OrderList copyWith({
    int? workOrderID,
    String? orderNumber,
    String? requestTime,
    bool? isAssigned,
    String? customerName,
    String? customerCode,
    String? customerMobile,
    String? customerAddress,
    int? customerLocationClassID,
    String? className,
    int? priorityID,
    String? priorityName,
    int? zoneID,
    String? zoneName,
    int? cityID,
    String? cityName,
    int? orderQuantity,
    String? scheduledDeliveryTime,
    String? stationName,
    String? serviceType,
    String? tankerPlateNo,
    int? accessoryID,
    String? accessoryNames,
    int? assignedDriverID,
    int? assignedStationID,
    int? landmarkID,
    int? assignedVehicleID,
    String? vehicleCodePlateNo,
    int? customerLocationID,
    int? serviceTypeID,
    int? customerID,
    int? lastStatusID,
    String? lastStatusName,
    int? lastStatusBy,
    String? lastStatusByUserName,
    String? customerLocationLng,
    String? customerLocationLat,
    List<AccessoryDTOs>? accessoryDTOs,
    String? vehicleStatusName,
    int? vehicleCapacity,
    int? vehicleCapacityUnit,
    String? lastStatusTime,
    String? lastStatusTimeVehicle,
    String? confirmationCode,
    int? costBeforVAT,
    int? vAT,
    int? costAfterVAT,
    String? paymentStatusAr,
    String? paymentStatusEn,
  }) {
    return OrderList(
      workOrderID: workOrderID ?? this.workOrderID,
      orderNumber: orderNumber ?? this.orderNumber,
      requestTime: requestTime ?? this.requestTime,
      isAssigned: isAssigned ?? this.isAssigned,
      customerName: customerName ?? this.customerName,
      customerCode: customerCode ?? this.customerCode,
      customerMobile: customerMobile ?? this.customerMobile,
      customerAddress: customerAddress ?? this.customerAddress,
      customerLocationClassID:
          customerLocationClassID ?? this.customerLocationClassID,
      className: className ?? this.className,
      priorityID: priorityID ?? this.priorityID,
      priorityName: priorityName ?? this.priorityName,
      zoneID: zoneID ?? this.zoneID,
      zoneName: zoneName ?? this.zoneName,
      cityID: cityID ?? this.cityID,
      cityName: cityName ?? this.cityName,
      orderQuantity: orderQuantity ?? this.orderQuantity,
      scheduledDeliveryTime:
          scheduledDeliveryTime ?? this.scheduledDeliveryTime,
      stationName: stationName ?? this.stationName,
      serviceType: serviceType ?? this.serviceType,
      tankerPlateNo: tankerPlateNo ?? this.tankerPlateNo,
      accessoryID: accessoryID ?? this.accessoryID,
      accessoryNames: accessoryNames ?? this.accessoryNames,
      assignedDriverID: assignedDriverID ?? this.assignedDriverID,
      assignedStationID: assignedStationID ?? this.assignedStationID,
      landmarkID: landmarkID ?? this.landmarkID,
      assignedVehicleID: assignedVehicleID ?? this.assignedVehicleID,
      vehicleCodePlateNo: vehicleCodePlateNo ?? this.vehicleCodePlateNo,
      customerLocationID: customerLocationID ?? this.customerLocationID,
      serviceTypeID: serviceTypeID ?? this.serviceTypeID,
      customerID: customerID ?? this.customerID,
      lastStatusID: lastStatusID ?? this.lastStatusID,
      lastStatusName: lastStatusName ?? this.lastStatusName,
      lastStatusBy: lastStatusBy ?? this.lastStatusBy,
      lastStatusByUserName: lastStatusByUserName ?? this.lastStatusByUserName,
      customerLocationLng: customerLocationLng ?? this.customerLocationLng,
      customerLocationLat: customerLocationLat ?? this.customerLocationLat,
      accessoryDTOs: accessoryDTOs ?? this.accessoryDTOs,
      vehicleStatusName: vehicleStatusName ?? this.vehicleStatusName,
      vehicleCapacity: vehicleCapacity ?? this.vehicleCapacity,
      vehicleCapacityUnit: vehicleCapacityUnit ?? this.vehicleCapacityUnit,
      lastStatusTime: lastStatusTime ?? this.lastStatusTime,
      lastStatusTimeVehicle:
          lastStatusTimeVehicle ?? this.lastStatusTimeVehicle,
      confirmationCode: confirmationCode ?? this.confirmationCode,
      costBeforVAT: costBeforVAT ?? this.costBeforVAT,
      vAT: vAT ?? this.vAT,
      costAfterVAT: costAfterVAT ?? this.costAfterVAT,
      paymentStatusAr: paymentStatusAr ?? this.paymentStatusAr,
      paymentStatusEn: paymentStatusEn ?? this.paymentStatusEn,
    );
  }
}

class AccessoryDTOs {
  int? iD;
  String? code;
  String? name;

  AccessoryDTOs({this.iD, this.code, this.name});

  AccessoryDTOs.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    code = json['Code'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Code'] = code;
    data['Name'] = name;
    return data;
  }
}
