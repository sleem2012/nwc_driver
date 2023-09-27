import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/commands_list_model.dart';
import '../../shared/error/failures.dart';
part 'get_commands_list_state.freezed.dart';

@freezed
abstract class GetCommandsListState with _$GetCommandsListState {
  const factory GetCommandsListState.initial() = GetCommandsListStateInitial;
  const factory GetCommandsListState.loading() = GetCommandsListStateLoading;
  const factory GetCommandsListState.success({required GetCommandsListModel model}) = GetCommandsListStateSuccess;
  const factory GetCommandsListState.error({required KFailure error}) = GetCommandsListStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs