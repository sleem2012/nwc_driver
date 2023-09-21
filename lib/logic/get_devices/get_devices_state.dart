import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/devices_list_model.dart';
part 'get_devices_state.freezed.dart';

@freezed
abstract class GetDevicesState with _$GetDevicesState {
  const factory GetDevicesState.initial() = GetDevicesStateInitial;
  const factory GetDevicesState.loading() = GetDevicesStateLoading;
  const factory GetDevicesState.success({required DevicesListModel model}) = GetDevicesStateSuccess;
  const factory GetDevicesState.error({required String error}) = GetDevicesStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs