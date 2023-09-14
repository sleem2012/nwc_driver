import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/helper.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/image_widget.dart';

class ElictricItem extends StatelessWidget {
  const ElictricItem({super.key, required this.imagePath, required this.title});
final String imagePath;
final String title;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(
          children: [

            KImageWidget(
                height: Get.height * .2,
                width: double.infinity,
                fit: BoxFit.scaleDown,
                imageUrl:
                    imagePath),
            10.h,
            Text(title,style: KTextStyle.of(context).body2,)

          ],
        ));
  }
}
