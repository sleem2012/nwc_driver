import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/extensions.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/colors.dart';
import '../../shared/theme/helper.dart';
import '../../shared/theme/text_theme.dart';
import '../../shared/widgets/action_dialog.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/drop_down.dart';
import '../../shared/widgets/nav.dart';
import '../../shared/widgets/text_field.dart';
import 'widget/key_value_text.dart';

class RequestDetailsView extends StatelessWidget {
  const RequestDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> reasons = [
      "موقع خاطى",
      "عدم رد العميل",
      "شحنه خاطئ",
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: KColors.of(context).accentColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: KHelper.hScaffoldPadding, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/person.png"),
                    8.w,
                    Text(
                      "معاذ مصطفى - قجو",
                      style: KTextStyle.of(context).btnTitle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/phone-call.png"),
                    9.w,
                    Image.asset("assets/images/gps.png"),
                  ],
                ),
              ],
            ),
          ),
          22.h,
          Expanded(
            child: Container(
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(KHelper.hScaffoldPadding),
                  child: Column(
                    children: [
                      Container(
                        decoration: KHelper.of(context)
                            .elevatedBox
                            .copyWith(color: const Color(0xffCFE9FF)),
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Tr.get.online,
                              style: KTextStyle.of(context)
                                  .subtitle
                                  .copyWith(color: Colors.green),
                            ),
                            Text(
                              "رقم: 51512145425",
                              style: KTextStyle.of(context).primary,
                            ),
                          ],
                        ),
                      ),
                      50.h,
                      const KeyValueText(
                          keyText: "وقت الطلب", value: "11/7/231"),
                      13.h,
                      const KeyValueText(
                          keyText: "حجم الصهريج", value: "32 m3"),
                      13.h,
                      const KeyValueText(keyText: "الاولوية", value: "عادي"),
                      13.h,
                      Divider(
                        color: KColors.of(context).accentColor,
                      ),
                      13.h,
                      const KeyValueText(keyText: "تكلفة الصهريج", value: ""),
                      13.h,
                      const KeyValueText(keyText: "رسوم إضافية", value: ""),
                      13.h,
                      const KeyValueText(keyText: "رسوم إضافية", value: ""),
                      30.h,
                      const KeyValueText(keyText: "إجمالي التكلفة", value: ""),
                      13.h,
                      Divider(
                        color: KColors.of(context).accentColor,
                      ),
                      13.h,
                      KeyValueText(
                          keyText: "حالة الدفع",
                          value: "Approved",
                          valueStyle: KTextStyle.of(context)
                              .title
                              .copyWith(color: Colors.green)),
                      45.h,
                      KButton(
                        title: "وصول",
                        onPressed: () {
                          ActionDialog(
                            title: Tr.get.arrived_to_client,
                            approveAction: "نعم",
                            cancelAction: "لا",
                            onApproveClick: () {
                            },
                            onCancelClick: () {
                              Nav.back();
                            },
                          ).show<void>(context);
                        },
                        iconPath: "assets/images/delivery.png",
                        isFlat: true,
                        kFillColor: KColors.of(context).accentColor,
                      ),
                      13.h,
                      KButton(
                        title: "تم التسليم",
                        onPressed: () {
                          KHelper.showCustomBottomSheet(Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                KTextFormField(
                                  hintText: "الكود",
                                  onChanged: (p0) {},
                                ),
                                20.h,
                                KButton(
                                  title: Tr.get.send_code,
                                  onPressed: () {},
                                  width: Get.width,
                                )
                              ],
                            ),
                          ));
                        },
                        iconPath: "assets/images/reciever.png",
                        isFlat: true,
                        kFillColor: const Color(0xff04B296),
                      ),
                      13.h,
                      KButton(
                        title: "لم يتم التسليم",
                        onPressed: () {
                          KHelper.showCustomBottomSheet(Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                KDropdownBtn(
                                    title: Tr.get.reason,
                                    onChanged: (p0) {},
                                    items: reasons
                                        .map((e) => KHelper.of(context)
                                            .itemView<String>(
                                                itemText: e, value: e))
                                        .toList()),
                                20.h,
                                KTextFormField(
                                  hintText: "التعليق",
                                  onChanged: (p0) {},
                                ),
                                20.h,
                                KButton(
                                  title: Tr.get.send_code,
                                  onPressed: () {},
                                  width: Get.width,
                                )
                              ],
                            ),
                          ));
                        },
                        iconPath: "assets/images/warning.png",
                        isFlat: true,
                        kFillColor: const Color(0xffF4C859),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
