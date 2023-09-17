import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../data/model/motor_model.dart';
import '../../../di.dart';
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
  });

  final MotorModel model;

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
            create: (context) => Di.getPendingCommands
              ..get(type: model.type, meterNo: model.modelNo),
          ),
        ],
        child: BlocConsumer<SendCommandsBloc, SendCommandsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                KHelper.showSnackBar(Tr.get.success);
                PendngCommandsBloc.of(context)
                    .get(type: model.type, meterNo: model.modelNo);
              },
            );
          },
          builder: (context, state) {
            final sendCommand = SendCommandsBloc.of(context);
            return RefreshIndicator(
              onRefresh: () async {
                await PendngCommandsBloc.of(context)
                    .get(type: model.type, meterNo: model.modelNo);
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .3,
                      child: KImageWidget(
                          height: Get.height * .2,
                          width: double.infinity,
                          fit: BoxFit.fitHeight,
                          imageUrl: model.image),
                    ),
                    10.h,
                    KeyValueText(keyText: "Number", value: model.modelNo ?? ''),
                    10.h,

                    KeyValueText(
                        keyText: "Last Connection",
                        value: (DateTime.now()
                                .subtract(const Duration(minutes: 5))
                                .toString())
                            .substring(0, 19)),

                    10.h,
                    KeyValueText(
                        keyText: "Status",
                        value: "online"

                    ),
                    // BlocBuilder<PendngCommandsBloc, PendngCommandsState>(
                    //   builder: (context, state) {
                    //     return PendngCommandsBloc.of(context)
                    //         .pendingCommandData
                    //         ?.meter_Status!=null?
                    10.h,
                    BlocBuilder<PendngCommandsBloc, PendngCommandsState>(
                      builder: (context, state) {
                        final penddingCommands = PendngCommandsBloc.of(context);

                        return KRequestOverlay(
                          isLoading: state is PendngCommandsStateLoading,
                          loadingWidget: ShimmerBox(
                            height: Get.height * .2,
                            width: Get.width * .8,
                          ),
                          child: (penddingCommands.pendingCommandData?.id??0)>0?Container(
                            decoration: KHelper.of(context)
                                .elevatedBox
                                .copyWith(
                                    color: penddingCommands.pendingCommandData
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text("Command :     ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        // height: Get.height * .1,
                                        width: Get.width * .7,
                                        child: Text(
                                            penddingCommands.pendingCommandData
                                                    ?.commandName
                                                    .toString() ??
                                                '',
                                            softWrap: true),
                                      ),
                                    ],
                                  ),
                                  10.h,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text("Status :             ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        // height: Get.height * .1,
                                        width: Get.width * .7,
                                        child: Text(
                                            penddingCommands.pendingCommandData
                                                        ?.isPending ==
                                                    true
                                                ? "pending"
                                                : "completed" ?? '',
                                            softWrap: true),
                                      ),
                                    ],
                                  ),
                                  10.h,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text("Requested At : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        // height: Get.height * .1,
                                        width: Get.width * .7,
                                        child: Text(
                                            penddingCommands.pendingCommandData
                                                    ?.createdDt
                                                    .toString() ??
                                                '',
                                            softWrap: true),
                                      ),
                                    ],
                                  ),
                                  10.h,
                                  penddingCommands
                                              .pendingCommandData?.updatedDt!=null

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
                                                          ?.updatedDt
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
                          ):SizedBox(),
                        );
                      },
                    ),
                    40.h,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        KButton(
                          isLoading: state is SendCommandsStateLoading,
                          // isFlat: true,
                          // width: Get.width * .1,
                          // hieght: 30,
                          title: "Open Valve",
                          onPressed: () {
                            sendCommand.send(
                                command:
                                    "FE1D2105121AEFBA88F7D34ABDF4FAD3EBD20F73716BC22A0F52A59ABD7D8F53F1200616",
                                type: model.type,
                                meterNo: model.modelNo ?? '');
                          },
                        ),
                        20.h,
                        KButton(
                          isLoading: state is SendCommandsStateLoading,
                          // isFlat: true,
                          // width: Get.width * .1,
                          // hieght: 30,
                          title: "Open Valve ( 50% )",
                          onPressed: () {
                            sendCommand.send(
                                type: model.type,
                                command:
                                    "FE7C00FE96A9A8FAAF2D00D8E4B3B037B644007F773283BCDB1B92D5B4EA4568FA20B016",
                                meterNo: model.modelNo ?? '');
                          },
                        ),
                        20.h,
                        KButton(
                          isLoading: state is SendCommandsStateLoading,

                          title: "Close Valve",
                          onPressed: () {
                            sendCommand.send(
                                command:
                                    "FE1D2105121AEFBA88F7D34ABDF4FAD3EBBE0B48B21D5F5BF1A587F24304745C4A204716",
                                type: model.type,
                                meterNo: model.modelNo ?? '');
                          },
                          // width: Get.width * .1,
                        ),
                        30.h,
                      ],
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
