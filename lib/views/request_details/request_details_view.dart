import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../data/model/reject_reasons_model.dart';
import '../../di.dart';
import '../../logic/get_order_by_id/get_order_by_id_bloc.dart';
import '../../logic/get_order_by_id/get_order_by_id_state.dart';
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
  const RequestDetailsView({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> deliverdForm = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: KColors.of(context).accentColor,
      body: BlocProvider(
        create: (context) => Di.getOrderById..get(id: id),
        child: BlocBuilder<GetOrderByIdBloc, GetOrderByIdState>(
          builder: (context, state) {
            final order = GetOrderByIdBloc.of(context).model;

            return KRequestOverlay(
              isLoading: state is GetOrderByIdStateLoading,
              child: Column(
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
                            SizedBox(
                              width: Get.width * .4,
                              child: Text(
                                order.customerName ?? '',
                                style: KTextStyle.of(context).btnTitle,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () async {
                                  await launchUrlString(
                                      "tel:${order.customerMobile}");
                                },
                                child: Image.asset(
                                    "assets/images/phone-call.png")),
                            9.w,
                            InkWell(
                                onTap: () async {
                                  String url =
                                      "google.navigation:q=${order.customerLocationLat},${order.customerLocationLng}";
                                  await launchUrlString(url);
                                },
                                child: Image.asset("assets/images/gps.png")),
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
                        child: RefreshIndicator(
                          onRefresh: () async {
                            await GetOrderByIdBloc.of(context).get(id: id);
                          },
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding:
                                const EdgeInsets.all(KHelper.hScaffoldPadding),
                            child: BlocProvider(
                              create: (context) => Di.updateOrderBloc,
                              child: BlocConsumer<UpdateOrderBloc,
                                  UpdateOrderState>(
                                listener: (context, state) {
                                  state.whenOrNull(
                                    success: () async {
                                      await GetOrderByIdBloc.of(context)
                                          .get(id: id);
                                      KHelper.showSnackBar(Tr.get.success);
                                    },
                                  );
                                },
                                builder: (context, state) {
                                  final update = UpdateOrderBloc.of(context);
                                  return KLoadingOverlay(
                                    isLoading:
                                        state is UpdateOrderBlocStateLoading,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: KHelper.of(context)
                                              .elevatedBox
                                              .copyWith(
                                                  color:
                                                      const Color(0xffCFE9FF)),
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                order.lastStatusName ?? '',
                                                style: KTextStyle.of(context)
                                                    .subtitle
                                                    .copyWith(
                                                        color: Colors.green),
                                              ),
                                              Text(
                                                order.orderNumber ?? '',
                                                style: KTextStyle.of(context)
                                                    .primary,
                                              ),
                                            ],
                                          ),
                                        ),
                                        50.h,
                                        KeyValueText(
                                            keyText: Tr.get.request_time,
                                            value: order.requestTime
                                                    ?.substring(0, 10) ??
                                                ''),
                                        13.h,
                                        KeyValueText(
                                            keyText: Tr.get.order_qty,
                                            value:
                                                "${order.orderQuantity?.toString()}m3"),
                                        13.h,
                                        KeyValueText(
                                            keyText: Tr.get.priority,
                                            value: order.priorityName ?? ''),
                                        13.h,
                                        Divider(
                                          color:
                                              KColors.of(context).accentColor,
                                        ),
                                        13.h,
                                        KeyValueText(
                                            keyText: Tr.get.cosetBvat,
                                            value: (order.costBeforVAT
                                                        ?.toString() ??
                                                    '') +
                                                Tr.get.sar),
                                        13.h,
                                        KeyValueText(
                                            keyText: Tr.get.vat,
                                            value:
                                                (order.vAT?.toString() ?? '') +
                                                    Tr.get.sar),
                                        13.h,
                                        KeyValueText(
                                            keyText: Tr.get.another_vat,
                                            value: "0"),
                                        30.h,
                                        KeyValueText(
                                            keyText: Tr.get.cosetAvat,
                                            value: (order.costAfterVAT
                                                    .toString()) +
                                                Tr.get.sar),
                                        13.h,
                                        Divider(
                                          color:
                                              KColors.of(context).accentColor,
                                        ),
                                        13.h,
                                        KeyValueText(
                                            keyText: Tr.get.payment_status,
                                            value: order.paymentStatusEn ?? '',
                                            valueStyle: KTextStyle.of(context)
                                                .title
                                                .copyWith(color: Colors.green)),
                                        45.h,
                                        KButton(
                                          title: Tr.get.arrived,
                                          onPressed: () {
                                            ActionDialog(
                                              title: Tr.get.arrived_to_client,
                                              approveAction: Tr.get.yes_message,
                                              cancelAction: Tr.get.no_message,
                                              onApproveClick: () {
                                                update.setValues(
                                                    order: order, statusId: 7);
                                                update.update();
                                                Nav.back();
                                              },
                                              onCancelClick: () {
                                                Nav.back();
                                              },
                                            ).show<void>(context);
                                          },
                                          iconPath:
                                              "assets/images/delivery.png",
                                          isFlat: true,
                                          kFillColor:
                                              KColors.of(context).accentColor,
                                        ),
                                        13.h,
                                        KButton(
                                          title: Tr.get.delivered,
                                          onPressed: () {
                                            KHelper.showCustomBottomSheet(
                                                Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Form(
                                                key: deliverdForm,
                                                child: Column(
                                                  children: [
                                                    KTextFormField(
                                                      hintText:
                                                          Tr.get.confrim_code,
                                                      controller: update
                                                          .confrimCodeController,
                                                      validator: (p0) {
                                                        if (p0!.isEmpty) {
                                                          return Tr.get
                                                              .field_required;
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                    20.h,
                                                    KButton(
                                                      title: Tr.get.send_code,
                                                      onPressed: () {
                                                        if (deliverdForm
                                                            .currentState!
                                                            .validate()) {
                                                          update.setValues(
                                                            order: order,
                                                            statusId: 4,
                                                          );
                                                          update.update();
                                                          Nav.back();
                                                        }
                                                      },
                                                      width: Get.width,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ));
                                          },
                                          iconPath:
                                              "assets/images/reciever.png",
                                          isFlat: true,
                                          kFillColor: const Color(0xff04B296),
                                        ),
                                        13.h,
                                        KButton(
                                          title: Tr.get.not_delivered,
                                          onPressed: () {
                                            KHelper.showCustomBottomSheet(
                                                Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Column(
                                                children: [
                                                  BlocBuilder<
                                                      GetRejectReasonsBloc,
                                                      GetRejectReasonsState>(
                                                    builder: (context, state) {
                                                      final reject =
                                                          GetRejectReasonsBloc
                                                                  .of(context)
                                                              .model;
                                                      return KRequestOverlay(
                                                        onTryAgain: () =>
                                                            GetRejectReasonsBloc
                                                                    .of(context)
                                                                .get,
                                                        loadingWidget:
                                                            ShimmerBox(
                                                          width: Get.width,
                                                        ),
                                                        isLoading: state
                                                            is GetRejectReasonsStateLoading,
                                                        child: KDropdownBtn<
                                                                RejectValue>(
                                                            title: Tr
                                                                .get.reason,
                                                            onChanged: (p0) {
                                                              update.reasonId =
                                                                  p0?.id;
                                                            },
                                                            items: reject
                                                                    ?.value
                                                                    ?.map((e) => KHelper.of(context).itemView<
                                                                            RejectValue>(
                                                                        itemText:
                                                                            e.name ??
                                                                                '',
                                                                        value:
                                                                            e))
                                                                    .toList() ??
                                                                []),
                                                      );
                                                    },
                                                  ),
                                                  20.h,
                                                  KTextFormField(
                                                    hintText: Tr.get.comment,
                                                    controller: update
                                                        .commentController,
                                                  ),
                                                  20.h,
                                                  KButton(
                                                    title: Tr.get.send_code,
                                                    onPressed: () {
                                                      update.setValues(
                                                        order: order,
                                                        statusId: 3,
                                                      );
                                                      update.update();
                                                      Nav.back();
                                                    },
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
                          ),
                        )),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
