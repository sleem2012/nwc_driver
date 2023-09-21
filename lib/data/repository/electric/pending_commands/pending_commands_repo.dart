import '../../../../di.dart';
import '../../../../shared/api_client/dio_client_helper.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../model/pending_commands_model.dart';

abstract class PendingCommandsRepoAbs {
  Future<Either<KFailure, DeviceDetailsModel>> get_pending_commands(
      {required String deviceId});
}

class PendingCommandsRepoImp implements PendingCommandsRepoAbs {
  @override
  Future<Either<KFailure, DeviceDetailsModel>> get_pending_commands(
      {required String deviceId}) async {
    Future<Response<dynamic>> func = Di.dioClient
        .get(KEndPoints.get_device_details, params: {"deviceId": deviceId});
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) {
        return Right(DeviceDetailsModel.fromJson(r));
      },
    );
  }
}
