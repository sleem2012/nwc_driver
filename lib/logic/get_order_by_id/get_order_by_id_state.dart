import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/order_model.dart';
import '../../shared/error/failures.dart';
part 'get_order_by_id_state.freezed.dart';

@freezed
abstract class GetOrderByIdState with _$GetOrderByIdState {
  const factory GetOrderByIdState.initial() = GetOrderByIdStateInitial;
  const factory GetOrderByIdState.loading() = GetOrderByIdStateLoading;
  const factory GetOrderByIdState.success({required OrderList model}) = GetOrderByIdStateSuccess;
  const factory GetOrderByIdState.error({required KFailure error}) = GetOrderByIdStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs