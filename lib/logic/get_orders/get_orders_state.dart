import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/order_model.dart';
import '../../shared/error/failures.dart';
part 'get_orders_state.freezed.dart';

@freezed
abstract class GetOrdersState with _$GetOrdersState{
  const factory GetOrdersState.initial() = GetOrdersStateInitial;
  const factory GetOrdersState.loading() = GetOrdersStateLoading;
  const factory GetOrdersState.loadMore() = GetOrdersStateLoadMore;
  const factory GetOrdersState.success({required OrderModel model}) = GetOrdersStateSuccess;
  const factory GetOrdersState.error({required KFailure error}) = GetOrdersStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs