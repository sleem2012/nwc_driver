import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/order_model.dart';
import '../../data/repository/order/order_repo.dart';
import '../../shared/error/failures.dart';
import 'get_order_by_id_state.dart';

class GetOrderByIdBloc extends Cubit<GetOrderByIdState> {
  GetOrderByIdBloc({required this.repoImp})
      : super(const GetOrderByIdState.initial());

  static GetOrderByIdBloc of(BuildContext context) =>
      BlocProvider.of<GetOrderByIdBloc>(context);

  final OrderRepoImp repoImp;
  OrderList model = OrderList();

  get({required int id}) async {
    try {
      emit(const GetOrderByIdState.loading());
      final result = await repoImp.get_order_by_id(id: id);
      result.fold(
        (l) {
          debugPrint(
              '================= GetOrderById Bloc : ${KFailure.toError(l)}');
          emit(GetOrderByIdState.error(error: l));
        },
        (r) {
          debugPrint('================= GetOrderById Bloc : ${r.toString()}  ');
          model = r;
          emit(GetOrderByIdState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint(
          '================= GetOrderById Bloc (Catch): ${e.toString()} ');
      emit(const GetOrderByIdState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
