import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../data/model/devices_list_model.dart';
import '../../../data/model/motor_model.dart';
import '../../../di.dart';
import '../../../logic/GetButtonsList/GetButtonsList_bloc.dart';
import '../../../logic/GetButtonsList/GetButtonsList_state.dart';
import '../../../logic/pendng_commands/pendng_commands_bloc.dart';
import '../../../logic/pendng_commands/pendng_commands_bloc.dart';
import '../../../logic/pendng_commands/pendng_commands_state.dart';
import '../../../logic/send_commands/send_commands_bloc.dart';
import '../../../logic/send_commands/send_commands_bloc.dart';
import '../../../logic/send_commands/send_commands_state.dart';
import '../../../shared/appbar.dart';
import '../../../shared/extensions.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/helper.dart';
import '../../../shared/theme/text_theme.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/image_widget.dart';
import '../../../shared/widgets/loading/loading_overlay.dart';
import '../../../shared/widgets/shimmer_box.dart';
import '../../request_details/widget/key_value_text.dart';

class ElectricMeterDetailsScreen extends StatelessWidget {
  const ElectricMeterDetailsScreen({
    super.key,
    required this.model,
    required this.image,
  });

  final DeviceListValue model;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: 'Water Meter Details'),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => Di.sendCommand,
          ),
          BlocProvider(
            create: (context) =>
                Di.getPendingCommands..get(deviceId: model.id.toString()),
          ),
        ],
        child: BlocConsumer<SendCommandsBloc, SendCommandsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                KHelper.showSnackBar(Tr.get.success);
                GetDeviceDetailBloc.of(context)
                    .get(deviceId: model.id.toString());
              },
            );
          },
          builder: (context, state) {
            final sendCommand = SendCommandsBloc.of(context);
            return RefreshIndicator(
              onRefresh: () async {
                await GetDeviceDetailBloc.of(context)
                    .get(deviceId: model.id.toString());
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(30),
                child: BlocBuilder<GetDeviceDetailBloc, GetDeviceDetailsState>(
                  builder: (context, state) {
                    final penddingCommands = GetDeviceDetailBloc.of(context);

                    return Column(
                      children: [
                        SizedBox(
                          height: Get.height * .25,
                          child: KImageWidget(
                              height: Get.height * .2,
                              width: double.infinity,
                              fit: BoxFit.fitHeight,
                              imageUrl: image),
                        ),
                        5.h,
                        KeyValueText(
                            keyText: "Number", value: model.deviceNumber ?? '',valueStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                        5.h,
                        KeyValueText(
                            keyText: "Model Name",
                            value: model.modelName ?? ''),
                        5.h,
                        KeyValueText(
                            keyText: "Valve status ",
                            value: penddingCommands.pendingCommandData?.value?.valveStatus?.toString() ?? ''),
                        5.h,
                        KeyValueText(
                            keyText: "Last Reading Value",
                            value: penddingCommands.pendingCommandData?.value?.lastReadingValue?.toString() ?? ''),   5.h,
                        KeyValueText(
                            keyText: "Last Reading Date",
                            value: penddingCommands.pendingCommandData?.value?.lastReadingDate ?? ''),
                        5.h,

                        KeyValueText(
                            keyText: "Last Connection",
                            value: (penddingCommands.pendingCommandData?.value?.lastConnectionDate??"")),

                        5.h,
                        KeyValueText(
                            keyText: "Status",
                            value: penddingCommands
                                    .pendingCommandData?.value?.deviceStatus ??
                                ''),
                        // BlocBuilder<PendngCommandsBloc, PendngCommandsState>(
                        //   builder: (context, state) {
                        //     return PendngCommandsBloc.of(context)
                        //         .pendingCommandData
                        //         ?.meter_Status!=null?
                        5.h,
                        KRequestOverlay(
                          isLoading: state is PendngCommandsStateLoading,
                          loadingWidget: ShimmerBox(
                            height: Get.height * .2,
                            width: Get.width * .8,
                          ),
                          child: (penddingCommands.pendingCommandData?.value?.lastCommand !=
                                  null)
                              ? Container(
                                  decoration: KHelper.of(context)
                                      .elevatedBox
                                      .copyWith(
                                          color: penddingCommands
                                                      .pendingCommandData
                                                      ?.value
                                                      ?.lastCommand
                                                      ?.isPending ==
                                                  false
                                              ? Colors.greenAccent
                                              : const Color(0xffe38787)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text("Command :     ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              // height: Get.height * .1,
                                              width: Get.width * .7,
                                              child: Text(
                                                  penddingCommands
                                                          .pendingCommandData
                                                          ?.value
                                                          ?.lastCommand
                                                          ?.commandName
                                                          .toString() ??
                                                      '',
                                                  softWrap: true),
                                            ),
                                          ],
                                        ),
                                        5.h,
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text("Status :             ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              // height: Get.height * .1,
                                              width: Get.width * .7,
                                              child: Text(
                                                  penddingCommands
                                                              .pendingCommandData
                                                              ?.value
                                                              ?.lastCommand
                                                              ?.isPending ==
                                                          true
                                                      ? "pending"
                                                      : "completed" ?? '',
                                                  softWrap: true),
                                            ),
                                          ],
                                        ),
                                        5.h,
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text("Requested At : ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            SizedBox(
                                              // height: Get.height * .1,
                                              width: Get.width * .7,
                                              child: Text(
                                                  penddingCommands
                                                          .pendingCommandData
                                                          ?.value
                                                          ?.lastCommand
                                                          ?.createdDate
                                                          .toString() ??
                                                      '',
                                                  softWrap: true),
                                            ),
                                          ],
                                        ),
                                        5.h,
                                        penddingCommands
                                                    .pendingCommandData
                                                    ?.value
                                                    ?.lastCommand
                                                    ?.updatedDate !=
                                                null
                                            ? Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text("Processed At : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  SizedBox(
                                                    // height: Get.height * .1,
                                                    width: Get.width * .7,
                                                    child: Text(
                                                        penddingCommands
                                                                .pendingCommandData
                                                                ?.value
                                                                ?.lastCommand
                                                                ?.updatedDate
                                                                ?.toString() ??
                                                            '',
                                                        softWrap: true),
                                                  ),
                                                ],
                                              )
                                            : const SizedBox(),
                                      ],
                                    ),
                                  ),
                                )
                              : SizedBox(),
                        ),
                        40.h,
                        BlocProvider(
                          create: (context) => GetButtonsListBloc()
                            ..get(deviceModelId: model.device_model_id ?? -1),
                          child: BlocBuilder<GetButtonsListBloc,
                              GetButtonsListState>(
                            builder: (context, state) {
                              final buttonList =
                                  GetButtonsListBloc.of(context).model?.value;
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  buttonList?.length ?? 0,
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: BlocBuilder<SendCommandsBloc,
                                        SendCommandsState>(
                                      builder: (context, state) {
                                        return KButton(
                                          isLoading:
                                              state is SendCommandsStateLoading,
                                          // isFlat: true,
                                          // width: Get.width * .1,
                                          // hieght: 30,
                                          title: buttonList?[index]
                                                  .name
                                                  .toString() ??
                                              '',
                                          onPressed: () {
                                            sendCommand.send(
                                              command:
                                                  buttonList?[index].id ?? -1,
                                              device_id: model.id,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        // 30.h,
                        // KeyValueText(keyText: "Pending commands", value: ""),
                        // SizedBox(
                        //   height: 120,
                        //   child: ListView.builder(
                        //     itemCount: 2,
                        //     itemBuilder: (context, index) => GridPaper(
                        //       color: Colors.black,
                        //       divisions: 1,
                        //       interval: 1000,
                        //       subdivisions: 3,
                        //
                        //       child: Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             Text(
                        //               "open",
                        //               style: KTextStyle.of(context).body,
                        //             ),
                        //             10.w,
                        //             Text(
                        //               "2023/08/15 15:23",
                        //               style: KTextStyle.of(context).body2,
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
