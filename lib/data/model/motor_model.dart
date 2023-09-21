class DevicesList {
  String image, title, type;
    String?  modelNo;

  DevicesList({required this.image, required this.title, required this.type, required this.modelNo});

  static List<DevicesList> list = [
    DevicesList(
      image:
          "http://173.214.166.194:99/Files/meter_00.jpg",
      title: "B97 VPW Valve",
      type: "type1", modelNo: '52324692',
    ),
    DevicesList(
      image: "http://173.214.166.194:99/Files/meter_FE.png",
      title: "Residential Ultrasonic Water Meter",
      type: "type1", modelNo: '52324693',
    ),
    // MotorModel(
    //   image: "https://www.hnwinmeter.com/upload/product/1664241374863761.jpg",
    //   title: "Ultrasonic Water Meter",
    //   type: "type2", modelNo: '',
    // )
  ];
}
