import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/image_widget.dart';
import '../../../shared/widgets/nav.dart';
import '../details/electric_meter_details.dart';
import 'widget/electric_item.dart';

class ElectrictyHomeScreen extends StatelessWidget {
  const ElectrictyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://bovetech.com/upload/big/1_prod__img_B97VPW_1678239320.png",
      "https://www.hnwinmeter.com/upload/product/1664241374863761.jpg",
      "https://th.bing.com/th/id/OIP.BYMoEBFFnP9UCOFhaa5JpAHaHa?pid=ImgDet&rs=1"
    ];
    List<String> title = [
      "B97 VPW Valve",
      "Residential Ultrasonic Water Meter",
      "sfdsf"
    ];
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
      itemBuilder: (context, index) => InkWell(
          onTap: () {
            Nav.to( ElectricMeterDetailsScreen(imgPath: images[index],));
          },
          child:  ElictricItem(imagePath: images[index],title: title[index],)),
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: Get.height * .07,
        );
      },
    );
  }
}
