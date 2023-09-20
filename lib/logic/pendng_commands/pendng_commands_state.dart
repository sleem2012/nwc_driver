import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/pending_commands_model.dart';
import '../../shared/error/failures.dart';
part 'pendng_commands_state.freezed.dart';

@freezed
abstract class PendngCommandsState with _$PendngCommandsState {
  const factory PendngCommandsState.initial() = PendngCommandsStateInitial;
  const factory PendngCommandsState.loading() = PendngCommandsStateLoading;
  const factory PendngCommandsState.success({required PendingCommandsModel? model}) = PendngCommandsStateSuccess;
  const factory PendngCommandsState.error({required KFailure error}) = PendngCommandsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs