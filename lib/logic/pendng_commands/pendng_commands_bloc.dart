import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/pending_commands_model.dart';
import '../../data/repository/electric/pending_commands/pending_commands_repo.dart';
import '../../shared/error/failures.dart';
import 'pendng_commands_state.dart';

class PendngCommandsBloc extends Cubit<PendngCommandsState> {
  PendngCommandsBloc({required this.pendngCommandsRepoImp}) : super(const PendngCommandsState.initial());

  static PendngCommandsBloc of(BuildContext context) => BlocProvider.of<PendngCommandsBloc>(context);


  final PendingCommandsRepoImp pendngCommandsRepoImp;


  PendingCommandData? pendingCommandData;
  get({required String type,required String? meterNo}) async {
    try {
      emit(const PendngCommandsState.loading());
      final result = await pendngCommandsRepoImp.get_pending_commands(type: type, meterNo: meterNo);
      result.fold(
        (l) {
          debugPrint('================= PendngCommands Bloc : ${KFailure.toError(l)}');
          emit(PendngCommandsState.error(error: l));
        },
        (r) {
          pendingCommandData=r.data;
          debugPrint('================= PendngCommands Bloc : ${r.toString()}  ');
          emit(PendngCommandsState.success(model: r));
        },
      );
    } catch (e) {
      // rethrow;
      debugPrint('================= PendngCommands Bloc (Catch): ${e.toString()} ');
      emit(const PendngCommandsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
