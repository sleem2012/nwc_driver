import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../logic/get_commands_list/get_commands_list_bloc.dart';
import '../../../logic/get_commands_list/get_commands_list_state.dart';
import '../../../shared/extensions.dart';
import '../../../shared/theme/text_theme.dart';
import '../../../shared/widgets/loading/loading_overlay.dart';

class CommandsListScreen extends StatelessWidget {
  const CommandsListScreen({super.key, required this.deviceId});
final int deviceId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCommandsListBloc()..get(deviceId: deviceId),
      child: BlocBuilder<GetCommandsListBloc, GetCommandsListState>(
        builder: (context, state) {
          return KRequestOverlay(
            isLoading: state is GetCommandsListStateLoading,
            child: SizedBox(
              height: Get.height*.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Command Name" ?? ''),
                        30.w,
                        Text("Status           " ),
                        30.w,

                        Text("Requested Date"??'' ),
                        30.w,

                        Text("Processed Date"??'' ),

                      ],
                    ),
                    10.h,
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          final command =
                              GetCommandsListBloc.of(context).commandsListValue?[index];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(command?.commandName.toString() ?? '',style: KTextStyle.of(context).primary),
                              30.w,

                              Text(command?.isPending==true?"pending":"completed" ),
                              30.w,

                              Text(command?.createdDate??'' ),
                              30.w,

                              Text(command?.updatedDate??'' ),
                            ],
                          );
                        },
                        itemCount: GetCommandsListBloc.of(context).commandsListValue?.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
