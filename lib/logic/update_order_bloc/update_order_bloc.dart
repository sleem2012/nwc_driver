import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/order_model.dart';
import '../../data/repository/order/order_repo.dart';
import '../../shared/cache/locale_storage.dart';
import '../../shared/error/failures.dart';
import '../../shared/theme/helper.dart';
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
  final TextEditingController confrimCodeController = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  int? reasonId;

  Map<String, dynamic> setValues({
    required OrderList? order,
    required int statusId,
  }) {
    values = {
      "WorkOrderID": order?.workOrderID,
      "OrderNumber": order?.orderNumber,
      "StatusID": statusId,
      if (reasonId != null) "StatusReasonID": reasonId,
      if (commentController.text.isNotEmpty)
        "StatusComment": commentController.text,
      "StatusTime": KHelper.apiDateFormatter(DateTime.now()),
      if (confrimCodeController.text.isNotEmpty)
        "ConfirmationCode": confrimCodeController.text,
      "VehicleLatitude": KStorage.i.getLocation?.latitude,
      "VehicleLongitude": KStorage.i.getLocation?.longitude
    };
    return values;
  }
}
