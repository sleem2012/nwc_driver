import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/devices_list_model.dart';
import '../../shared/error/failures.dart';
import '../../shared/api_client/dio_client_helper.dart';
import '../../shared/api_client/endpoints.dart';
import '../../../di.dart';
import '../../shared/localization/trans.dart';
import 'get_devices_state.dart';

class GetDevicesBloc extends Cubit<GetDevicesState> {
  GetDevicesBloc() : super(const GetDevicesState.initial());

  static GetDevicesBloc of(BuildContext context) => BlocProvider.of<GetDevicesBloc>(context);

 DevicesListModel? devicesListModel;
  get() async {
    try {
      emit(const GetDevicesState.loading());
      final result = await get_get_devices();
      result.fold(
        (l) {
          debugPrint('================= GetDevices Bloc : ${KFailure.toError(l)}');
          emit(GetDevicesState.error(error: KFailure.toError(l)));
        },
        (r) {
          devicesListModel=r;
          debugPrint('================= GetDevices Bloc : ${r.toString()}  ');
          emit(GetDevicesState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetDevices Bloc (Catch): ${e.toString()} ');
      emit( GetDevicesState.error(error: Tr.get.something_went_wrong));
      rethrow;
    }
  }


  Future<Either<KFailure, DevicesListModel>> get_get_devices() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.getDevicesList);
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(DevicesListModel.fromJson(r)),
    );
  }


}



