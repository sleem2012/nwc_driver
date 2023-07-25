import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../data/model/reject_reasons_model.dart';
import '../../di.dart';
import '../../logic/get_orders/get_orders_bloc.dart';
import '../../logic/get_orders/get_orders_state.dart';
import '../../logic/get_reject_reasons/get_reject_reasons_bloc.dart';
import '../../logic/get_reject_reasons/get_reject_reasons_state.dart';
import '../../logic/update_order_bloc/update_order_bloc.dart';
import '../../logic/update_order_bloc/update_order_state.dart';
import '../../shared/extensions.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/colors.dart';
import '../../shared/theme/helper.dart';
import '../../shared/theme/text_theme.dart';
import '../../shared/widgets/action_dialog.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/drop_down.dart';
import '../../shared/widgets/loading/loading_overlay.dart';
import '../../shared/widgets/nav.dart';
import '../../shared/widgets/shimmer_box.dart';
import '../../shared/widgets/text_field.dart';
import 'widget/key_value_text.dart';

class RequestDetailsView extends StatelessWidget {
  const RequestDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: KColors.of(context).accentColor,
      body: BlocBuilder<GetOrdersBloc, GetOrdersState>(
        builder: (context, state) {
          final order = GetOrdersBloc.of(context).selectedOrder;
          return Column(
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
                          order?.customerName ?? '',
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
                      child: BlocProvider(
                        create: (context) => Di.updateOrderBloc,
                        child: BlocConsumer<UpdateOrderBloc, UpdateOrderState>(
                          listener: (context, state) {


                          },
                          builder: (context, state) {
                            final update=UpdateOrderBloc.of(context);
                            return KLoadingOverlay(
                              isLoading: state is UpdateOrderBlocStateLoading,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: KHelper.of(context)
                                        .elevatedBox
                                        .copyWith(color: const Color(0xffCFE9FF)),
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          Tr.get.online,
                                          style: KTextStyle.of(context)
                                              .subtitle
                                              .copyWith(color: Colors.green),
                                        ),
                                        Text(
                                          order?.orderNumber ?? '',
                                          style: KTextStyle.of(context).primary,
                                        ),
                                      ],
                                    ),
                                  ),
                                  50.h,
                                  KeyValueText(
                                      keyText: "وقت الطلب",
                                      value:
                                          order?.requestTime?.substring(0, 10) ??
                                              ''),
                                  13.h,
                                  KeyValueText(
                                      keyText: "حجم الصهريج",
                                      value:
                                          "${order?.orderQuantity?.toString()}m3" ??
                                              ''),
                                  13.h,
                                  KeyValueText(
                                      keyText: "الاولوية",
                                      value: order?.priorityName ?? ''),
                                  13.h,
                                  Divider(
                                    color: KColors.of(context).accentColor,
                                  ),
                                  13.h,
                                  KeyValueText(
                                      keyText: "تكلفة الصهريج",
                                      value: (order?.costBeforVAT?.toString() ??
                                              '') +
                                          Tr.get.sar),
                                  13.h,
                                  KeyValueText(
                                      keyText: "ضريبة القيمه المضافه",
                                      value: (order?.vAT?.toString() ?? '') +
                                          Tr.get.sar),
                                  13.h,
                                  const KeyValueText(
                                      keyText: "رسوم إضافية", value: "0"),
                                  30.h,
                                  KeyValueText(
                                      keyText: "إجمالي التكلفة",
                                      value:
                                          (order?.costAfterVAT.toString() ?? '') +
                                              Tr.get.sar),
                                  13.h,
                                  Divider(
                                    color: KColors.of(context).accentColor,
                                  ),
                                  13.h,
                                  KeyValueText(
                                      keyText: "حالة الدفع",
                                      value: order?.paymentStatusEn ?? '',
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

                                          update.setValues(order: order, statusId: 7);
                                          update.update();
                                          Nav.back();
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
                                            BlocBuilder<GetRejectReasonsBloc,
                                                GetRejectReasonsState>(
                                              builder: (context, state) {
                                                final reject =
                                                    GetRejectReasonsBloc.of(
                                                            context)
                                                        .model;
                                                return KRequestOverlay(
                                                  onTryAgain: () =>
                                                      GetRejectReasonsBloc.of(
                                                              context)
                                                          .get,
                                                  loadingWidget: ShimmerBox(
                                                    width: Get.width,
                                                  ),
                                                  isLoading: state
                                                      is GetRejectReasonsStateLoading,
                                                  child: KDropdownBtn<
                                                          RejectValue>(
                                                      title: Tr.get.reason,
                                                      onChanged: (p0) {},
                                                      items: reject?.value
                                                              ?.map((e) => KHelper
                                                                      .of(context)
                                                                  .itemView<
                                                                          RejectValue>(
                                                                      itemText:
                                                                          e.name ??
                                                                              '',
                                                                      value: e))
                                                              .toList() ??
                                                          []),
                                                );
                                              },
                                            ),
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
                            );
                          },
                        ),
                      ),
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}
