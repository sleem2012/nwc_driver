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
  const ElectricMeterDetailsScreen({super.key, required this.imgPath});
final String imgPath;
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
                        fit: BoxFit.fitHeight,
                        imageUrl:
                            imgPath),
                  ),
                  40.h,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      KButton(
                        isLoading: state is SendCommandsStateLoading,


                        title: "close",
                        onPressed: () {
                          sendCommand.send(
                              command:
                                  "FE1D2105121AEFBA88F7D34ABDF4FAD3EBD20F73716BC22A0F52A59ABD7D8F53F1200616");
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
                                  "FE1D2105121AEFBA88F7D34ABDF4FAD3EBBE0B48B21D5F5BF1A587F24304745C4A204716");
                        },
                      ),
                      20.h,
                      KButton(
                        isLoading: state is SendCommandsStateLoading,
                        // isFlat: true,
                        // width: Get.width * .1,
                        // hieght: 30,
                        title: "open 50%",
                        onPressed: () {
                          sendCommand.send(
                              command:
                                  "FE7C00FE96A9A8FAAF2D00D8E4B3B037B644007F773283BCDB1B92D5B4EA4568FA20B016");
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
