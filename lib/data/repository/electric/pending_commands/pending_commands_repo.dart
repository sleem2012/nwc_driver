import '../../../../di.dart';
import '../../../../shared/api_client/dio_client_helper.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../model/pending_commands_model.dart';

abstract class PendingCommandsRepoAbs {
  Future<Either<KFailure, PendingCommandsModel>> get_pending_commands(
      {required String type,required String? meterNo});
}

class PendingCommandsRepoImp implements PendingCommandsRepoAbs {
  @override
  Future<Either<KFailure, PendingCommandsModel>> get_pending_commands(
      {required String type,required String? meterNo}) async {
    Future<Response<dynamic>> func = Di.dioClient
        .get(KEndPoints.get_pending_commands, params: {"type": type,"MeterNo": meterNo});
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) {
        return Right(PendingCommandsModel.fromJson(r));
      },
    );
  }
}
