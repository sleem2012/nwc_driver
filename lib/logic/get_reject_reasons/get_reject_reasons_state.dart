import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/reject_reasons_model.dart';
import '../../shared/error/failures.dart';
part 'get_reject_reasons_state.freezed.dart';

@freezed
abstract class GetRejectReasonsState with _$GetRejectReasonsState {
  const factory GetRejectReasonsState.initial() = GetRejectReasonsStateInitial;
  const factory GetRejectReasonsState.loading() = GetRejectReasonsStateLoading;
  const factory GetRejectReasonsState.success({required RejectReasonsModel model}) = GetRejectReasonsStateSuccess;
  const factory GetRejectReasonsState.error({required KFailure error}) = GetRejectReasonsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs