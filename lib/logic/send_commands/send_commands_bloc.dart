import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/electric/send_commands/send_commands_repo.dart';
import '../../shared/error/failures.dart';
import 'send_commands_state.dart';

class SendCommandsBloc extends Cubit<SendCommandsState> {
  SendCommandsBloc({required this.sendCommandsRepoImp}) : super(const SendCommandsState.initial());

  static SendCommandsBloc of(BuildContext context) => BlocProvider.of<SendCommandsBloc>(context);


  final SendCommandsRepoImp sendCommandsRepoImp;

  send({required String command,required String type,required String meterNo}) async {
    try {
      emit(const SendCommandsState.loading());
      final result = await sendCommandsRepoImp.send_commands(command:command, type: type, MeterNo: meterNo);
      result.fold(
        (l) {
          print('heeeeeeeeeeeeeeeeeeeeeeeeeeeee${l.toString()}');
          debugPrint('================= SendCommands Bloc : ${KFailure.toError(l)}');
          emit(SendCommandsState.error(error: l));
        },
        (r) {
          debugPrint('================= SendCommands Bloc : ${r.toString()}  ');
          emit(const SendCommandsState.success());
        },
      );
    } catch (e) {
      debugPrint('================= SendCommands Bloc (Catch): ${e.toString()} ');
      emit(const SendCommandsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
