import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/order_model.dart';
import '../../data/repository/order/order_repo.dart';
import '../../shared/error/failures.dart';
import '../../shared/location_helper.dart';
import 'get_orders_state.dart';

class GetOrdersBloc extends Cubit<GetOrdersState> {
  GetOrdersBloc({required this.getOrdersRepoImp})
      : super(const GetOrdersState.initial());

  static GetOrdersBloc of(BuildContext context) =>
      BlocProvider.of<GetOrdersBloc>(context);

  final OrderRepoImp getOrdersRepoImp;

  OrderValue? get_ordersModel = OrderValue(result: []);

  bool get no_more =>
      get_ordersModel?.totalCount == get_ordersModel?.result?.length;
  int page = 1;

  get_orders({bool loadMore = false}) async {
    if (no_more && loadMore) return;
    if (loadMore) {
      page++;
      emit(const GetOrdersState.loadMore());
    } else {
      page = 1;
      emit(const GetOrdersState.loading());
    }

    try {
      final result =
          await getOrdersRepoImp.get_order(page: page, page_count: 10);
      result.fold(
        (l) {
          debugPrint(
              '================= GetOrders Bloc : ${KFailure.toError(l)}');
          emit(GetOrdersState.error(error: l));
        },
        (r) {
          get_ordersModel = loadMore
              ? get_ordersModel?.copyWith(
                  result: get_ordersModel?.result
                    ?..addAll(r.value?.result ?? []),
                  totalCount: r.value?.totalCount)
              : r.value;

          debugPrint('================= GetOrders Bloc : ${r.toString()}  ');
          emit(GetOrdersState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetOrders Bloc (Catch): ${e.toString()} ');
      emit(const GetOrdersState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }

  String get_distance({required OrderList order}) {
    String distance = LocationHelper.getDistance(
            lat2: order.customerLocationLat ?? '',
            lon2: order.customerLocationLng ?? '')
        .toStringAsFixed(0);

    return distance;

  }

OrderList? selectedOrder;
  void selectOrder(OrderList order) {
    selectedOrder = order;
  }




}
