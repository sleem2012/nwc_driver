import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/helper.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/image_widget.dart';

class ElictricItem extends StatelessWidget {
  const ElictricItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: KImageWidget(
            height: Get.height * .2,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl:
                "https://5.imimg.com/data5/TR/BR/EF/SELLER-9231106/single-phase-lcd-meter-1000x1000.jpg"));
  }
}
