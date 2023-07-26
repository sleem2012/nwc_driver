import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../data/model/order_model.dart';
import '../../data/repository/order/order_repo.dart';
import '../../shared/cache/locale_storage.dart';
import '../../shared/error/failures.dart';
import 'update_order_state.dart';

class UpdateOrderBloc extends Cubit<UpdateOrderState> {
  UpdateOrderBloc({required this.updateOrderBlocRepoImp})
      : super(const UpdateOrderState.initial());

  static UpdateOrderBloc of(BuildContext context) =>
      BlocProvider.of<UpdateOrderBloc>(context);

  final OrderRepoImp updateOrderBlocRepoImp;

  update() async {
    try {
      emit(const UpdateOrderState.loading());
      final result = await updateOrderBlocRepoImp.update_order_status(values);
      result.fold(
        (l) {
          debugPrint(
              '================= UpdateOrderBloc Bloc : ${KFailure.toError(l)}');
          emit(UpdateOrderState.error(error: l));
        },
        (r) {
          debugPrint(
              '================= UpdateOrderBloc Bloc : ${r.toString()}  ');
          emit(const UpdateOrderState.success());
        },
      );
    } catch (e) {
      debugPrint(
          '================= UpdateOrderBloc Bloc (Catch): ${e.toString()} ');
      emit(const UpdateOrderState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  Map<String, dynamic> values = {};

  Map<String, dynamic> setValues({
    required OrderList? order,
    required int statusId,
    int? statusReasonID,
    String? statusComment,
    String? confirmationCode,
  }) {
    debugPrint(DateTime.now().toString());
    values = {
      "WorkOrderID": order?.workOrderID,
      "OrderNumber": order?.orderNumber,
      "StatusID": statusId,
      if (statusReasonID != null) "StatusReasonID": statusReasonID,
      if (statusComment != null) "StatusComment": statusComment,
      "StatusTime": DateFormat("yyyy-MM-dd'T'HH:mm:ss").format(DateTime.now()),
      if (confirmationCode != null) "ConfirmationCode": confirmationCode,
      "VehicleLatitude": KStorage.i.getLocation?.latitude,
      "VehicleLongitude": KStorage.i.getLocation?.longitude
    };
    return values;
  }
}
