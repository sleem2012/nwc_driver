import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/pending_commands_model.dart';
import '../../shared/error/failures.dart';
part 'pendng_commands_state.freezed.dart';

@freezed
abstract class GetDeviceDetailsState with _$GetDeviceDetailsState {
  const factory GetDeviceDetailsState.initial() = PendngCommandsStateInitial;
  const factory GetDeviceDetailsState.loading() = PendngCommandsStateLoading;
  const factory GetDeviceDetailsState.success({required DeviceDetailsModel? model}) = PendngCommandsStateSuccess;
  const factory GetDeviceDetailsState.error({required KFailure error}) = PendngCommandsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs