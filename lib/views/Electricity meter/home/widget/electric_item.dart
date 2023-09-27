import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/model/devices_list_model.dart';
import '../../../../data/model/motor_model.dart';
import '../../../../shared/extensions.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/helper.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/image_widget.dart';
import '../../../../shared/widgets/nav.dart';
import '../../commands/commands_list_screen.dart';

class ElictricItem extends StatelessWidget {
  const ElictricItem({super.key, required this.model,});

  final DeviceListValue model;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KImageWidget(
            height: Get.height * .2,
            width: double.infinity,
            fit: BoxFit.scaleDown,
            imageUrl: model.image??'',
          ),
          10.h,
          Text(
            model.deviceNumber ?? '',
            style: KTextStyle.of(context).title.copyWith(fontSize: 26),
          ),
          10.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                model.deviceStatus ?? '',
                style: KTextStyle.of(context).title.copyWith(
                    color: model.deviceStatus == "Online"
                        ? Colors.green
                        : KColors.of(context).primary),
              ),
              Text(
                model.modelName ?? '',
                style: KTextStyle.of(context).title,
              )
            ],
          ),
        ],
      ),
    );
  }
}
