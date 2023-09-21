import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/pending_commands_model.dart';
import '../../data/repository/electric/pending_commands/pending_commands_repo.dart';
import '../../shared/error/failures.dart';
import 'pendng_commands_state.dart';

class GetDeviceDetailBloc extends Cubit<GetDeviceDetailsState> {
  GetDeviceDetailBloc({required this.pendngCommandsRepoImp}) : super(const GetDeviceDetailsState.initial());

  static GetDeviceDetailBloc of(BuildContext context) => BlocProvider.of<GetDeviceDetailBloc>(context);


  final PendingCommandsRepoImp pendngCommandsRepoImp;


  DeviceDetailsModel? pendingCommandData;
  get({required String deviceId}) async {
    try {
      emit(const GetDeviceDetailsState.loading());
      final result = await pendngCommandsRepoImp.get_pending_commands(deviceId: deviceId, );
      result.fold(
        (l) {
          debugPrint('================= PendngCommands Bloc : ${KFailure.toError(l)}');
          emit(GetDeviceDetailsState.error(error: l));
        },
        (r) {
          pendingCommandData=r;
          debugPrint('================= PendngCommands Bloc : ${r.toString()}  ');
          emit(GetDeviceDetailsState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= PendngCommands Bloc (Catch): ${e.toString()} ');
      emit(const GetDeviceDetailsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;

    }
  }
}
