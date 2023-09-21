import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
import 'GetButtonsList_bloc.dart';
part 'GetButtonsList_state.freezed.dart';

@freezed
abstract class GetButtonsListState with _$GetButtonsListState {
  const factory GetButtonsListState.initial() = GetButtonsListStateInitial;
  const factory GetButtonsListState.loading() = GetButtonsListStateLoading;
  const factory GetButtonsListState.success({required GetButtonsListModel model}) = GetButtonsListStateSuccess;
  const factory GetButtonsListState.error({required KFailure error}) = GetButtonsListStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs