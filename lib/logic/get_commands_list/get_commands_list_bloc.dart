import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/commands_list_model.dart';
import '../../shared/error/failures.dart';
import '../../shared/api_client/dio_client_helper.dart';
import '../../shared/api_client/endpoints.dart';
import '../../../di.dart';
import 'get_commands_list_state.dart';

class GetCommandsListBloc extends Cubit<GetCommandsListState> {
  GetCommandsListBloc() : super(const GetCommandsListState.initial());

  static GetCommandsListBloc of(BuildContext context) => BlocProvider.of<GetCommandsListBloc>(context);

 List<CommandsListValue>? commandsListValue;
  get({required int deviceId}) async {
    try {
      emit(const GetCommandsListState.loading());
      final result = await get_get_commands_list(deviceId: deviceId);
      result.fold(
        (l) {
          debugPrint('================= GetCommandsList Bloc : ${KFailure.toError(l)}');
          emit(GetCommandsListState.error(error: l));
        },
        (r) {
          commandsListValue=r.value;
          debugPrint('================= GetCommandsList Bloc : ${r.toString()}  ');
          emit(GetCommandsListState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetCommandsList Bloc (Catch): ${e.toString()} ');
      emit(const GetCommandsListState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


  Future<Either<KFailure, GetCommandsListModel>> get_get_commands_list({required int deviceId}) async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.get_commands_list,params: {"deviceId":deviceId});
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(GetCommandsListModel.fromJson(r)),
    );
  }


}


