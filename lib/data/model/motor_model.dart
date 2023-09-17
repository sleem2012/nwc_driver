class MotorModel {
  String image, title, type;
    String?  modelNo;

  MotorModel({required this.image, required this.title, required this.type, required this.modelNo});

  static List<MotorModel> list = [
    MotorModel(
      image:
          "https://bovetech.com/upload/big/1_prod__img_B97VPW_1678239320.png",
      title: "B97 VPW Valve",
      type: "type1", modelNo: '52324692',
    ),
    MotorModel(
      image: "https://bovetech.com/upload/big/1_prod__img_B97VPW_1678239320.png",
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
