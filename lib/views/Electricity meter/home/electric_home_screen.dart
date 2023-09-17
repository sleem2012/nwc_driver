import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/motor_model.dart';
import '../../../shared/widgets/image_widget.dart';
import '../../../shared/widgets/nav.dart';
import '../details/electric_meter_details.dart';
import 'widget/electric_item.dart';

class ElectrictyHomeScreen extends StatelessWidget {
  const ElectrictyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
      itemBuilder: (context, index) {
        final model=MotorModel.list[index];
        return InkWell(
          onTap: () {
            Nav.to( ElectricMeterDetailsScreen(model: model,));
          },
          child:  ElictricItem(model: model,));
      },
      itemCount: MotorModel.list.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: Get.height * .07,
        );
      },
    );
  }
}
