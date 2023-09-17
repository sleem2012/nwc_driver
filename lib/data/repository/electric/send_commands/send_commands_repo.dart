
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../di.dart';
import '../../../../shared/api_client/dio_client_helper.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/error/failures.dart';



abstract class SendCommandsRepoAbs {
  Future<Either<KFailure, Unit>> send_commands({required String command,required String type,required String MeterNo});
}

class SendCommandsRepoImp implements SendCommandsRepoAbs {

  @override
  Future<Either<KFailure, Unit>> send_commands({required String command,required String type,required String MeterNo}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.send_commands,data: {

        "command": command,
        "type": type,
      "MeterNo":MeterNo,

    });
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

}
