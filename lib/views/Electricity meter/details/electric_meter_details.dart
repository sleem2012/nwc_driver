import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../di.dart';
import '../../../logic/send_commands/send_commands_bloc.dart';
import '../../../logic/send_commands/send_commands_bloc.dart';
import '../../../logic/send_commands/send_commands_state.dart';
import '../../../shared/appbar.dart';
import '../../../shared/extensions.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/helper.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/image_widget.dart';

class ElectricMeterDetailsScreen extends StatelessWidget {
  const ElectricMeterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: 'Electric Meter Details'),
      body: BlocProvider(
        create: (context) => Di.sendCommand,
        child: BlocConsumer<SendCommandsBloc, SendCommandsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                KHelper.showSnackBar(Tr.get.success);
              },
            );
          },
          builder: (context, state) {
            final sendCommand = SendCommandsBloc.of(context);
            return SingleChildScrollView(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * .4,
                    child: KImageWidget(
                        height: Get.height * .2,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://5.imimg.com/data5/TR/BR/EF/SELLER-9231106/single-phase-lcd-meter-1000x1000.jpg"),
                  ),
                  40.h,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KButton(
                        isLoading: state is SendCommandsStateLoading,

                        // hieght: 30,
                        // isFlat: true,
                        title: "close",
                        onPressed: () {
                          sendCommand.send(
                              command:
                                  'FE 1D 21 05 12 1A EF BA 88 F7 D3 4A BD F4 FA D3 EB BE 0B 48 B2 1D 5F 5B F1 A5 87 F2 43 04 74 5C 4A 20 47 16');
                        },
                        // width: Get.width * .1,
                      ),
                      20.h,
                      KButton(
                        isLoading: state is SendCommandsStateLoading,
                        // isFlat: true,
                        // width: Get.width * .1,
                        // hieght: 30,
                        title: "open",
                        onPressed: () {
                          sendCommand.send(
                              command:
                                  "FE 7C 00 FE 96 A9 A8 FA AF 2D 00 D8 E4 B3 B0 37 B6 44 00 7F 77 32 83 BC DB 1B 92 D5 B4 EA 45 68 FA 20 B0 16");
                        },
                      ),
                    ],
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
