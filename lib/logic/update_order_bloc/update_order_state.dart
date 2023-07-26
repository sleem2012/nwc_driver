import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'update_order_state.freezed.dart';

@freezed
abstract class UpdateOrderState with _$UpdateOrderState {
  const factory UpdateOrderState.initial() = UpdateOrderBlocStateInitial;
  const factory UpdateOrderState.loading() = UpdateOrderBlocStateLoading;
  const factory UpdateOrderState.success() = UpdateOrderBlocStateSuccess;
  const factory UpdateOrderState.error({required KFailure error}) = UpdateOrderBlocStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs