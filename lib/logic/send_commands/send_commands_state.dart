import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'send_commands_state.freezed.dart';

@freezed
abstract class SendCommandsState with _$SendCommandsState {
  const factory SendCommandsState.initial() = SendCommandsStateInitial;
  const factory SendCommandsState.loading() = SendCommandsStateLoading;
  const factory SendCommandsState.success() = SendCommandsStateSuccess;
  const factory SendCommandsState.error({required KFailure error}) = SendCommandsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs