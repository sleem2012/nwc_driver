// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_devices_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetDevicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DevicesListModel model) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DevicesListModel model)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DevicesListModel model)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDevicesStateInitial value) initial,
    required TResult Function(GetDevicesStateLoading value) loading,
    required TResult Function(GetDevicesStateSuccess value) success,
    required TResult Function(GetDevicesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDevicesStateInitial value)? initial,
    TResult? Function(GetDevicesStateLoading value)? loading,
    TResult? Function(GetDevicesStateSuccess value)? success,
    TResult? Function(GetDevicesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDevicesStateInitial value)? initial,
    TResult Function(GetDevicesStateLoading value)? loading,
    TResult Function(GetDevicesStateSuccess value)? success,
    TResult Function(GetDevicesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDevicesStateCopyWith<$Res> {
  factory $GetDevicesStateCopyWith(
          GetDevicesState value, $Res Function(GetDevicesState) then) =
      _$GetDevicesStateCopyWithImpl<$Res, GetDevicesState>;
}

/// @nodoc
class _$GetDevicesStateCopyWithImpl<$Res, $Val extends GetDevicesState>
    implements $GetDevicesStateCopyWith<$Res> {
  _$GetDevicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDevicesStateInitialCopyWith<$Res> {
  factory _$$GetDevicesStateInitialCopyWith(_$GetDevicesStateInitial value,
          $Res Function(_$GetDevicesStateInitial) then) =
      __$$GetDevicesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDevicesStateInitialCopyWithImpl<$Res>
    extends _$GetDevicesStateCopyWithImpl<$Res, _$GetDevicesStateInitial>
    implements _$$GetDevicesStateInitialCopyWith<$Res> {
  __$$GetDevicesStateInitialCopyWithImpl(_$GetDevicesStateInitial _value,
      $Res Function(_$GetDevicesStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDevicesStateInitial implements GetDevicesStateInitial {
  const _$GetDevicesStateInitial();

  @override
  String toString() {
    return 'GetDevicesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDevicesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DevicesListModel model) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DevicesListModel model)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DevicesListModel model)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDevicesStateInitial value) initial,
    required TResult Function(GetDevicesStateLoading value) loading,
    required TResult Function(GetDevicesStateSuccess value) success,
    required TResult Function(GetDevicesStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDevicesStateInitial value)? initial,
    TResult? Function(GetDevicesStateLoading value)? loading,
    TResult? Function(GetDevicesStateSuccess value)? success,
    TResult? Function(GetDevicesStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDevicesStateInitial value)? initial,
    TResult Function(GetDevicesStateLoading value)? loading,
    TResult Function(GetDevicesStateSuccess value)? success,
    TResult Function(GetDevicesStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetDevicesStateInitial implements GetDevicesState {
  const factory GetDevicesStateInitial() = _$GetDevicesStateInitial;
}

/// @nodoc
abstract class _$$GetDevicesStateLoadingCopyWith<$Res> {
  factory _$$GetDevicesStateLoadingCopyWith(_$GetDevicesStateLoading value,
          $Res Function(_$GetDevicesStateLoading) then) =
      __$$GetDevicesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDevicesStateLoadingCopyWithImpl<$Res>
    extends _$GetDevicesStateCopyWithImpl<$Res, _$GetDevicesStateLoading>
    implements _$$GetDevicesStateLoadingCopyWith<$Res> {
  __$$GetDevicesStateLoadingCopyWithImpl(_$GetDevicesStateLoading _value,
      $Res Function(_$GetDevicesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDevicesStateLoading implements GetDevicesStateLoading {
  const _$GetDevicesStateLoading();

  @override
  String toString() {
    return 'GetDevicesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDevicesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DevicesListModel model) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DevicesListModel model)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DevicesListModel model)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDevicesStateInitial value) initial,
    required TResult Function(GetDevicesStateLoading value) loading,
    required TResult Function(GetDevicesStateSuccess value) success,
    required TResult Function(GetDevicesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDevicesStateInitial value)? initial,
    TResult? Function(GetDevicesStateLoading value)? loading,
    TResult? Function(GetDevicesStateSuccess value)? success,
    TResult? Function(GetDevicesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDevicesStateInitial value)? initial,
    TResult Function(GetDevicesStateLoading value)? loading,
    TResult Function(GetDevicesStateSuccess value)? success,
    TResult Function(GetDevicesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetDevicesStateLoading implements GetDevicesState {
  const factory GetDevicesStateLoading() = _$GetDevicesStateLoading;
}

/// @nodoc
abstract class _$$GetDevicesStateSuccessCopyWith<$Res> {
  factory _$$GetDevicesStateSuccessCopyWith(_$GetDevicesStateSuccess value,
          $Res Function(_$GetDevicesStateSuccess) then) =
      __$$GetDevicesStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({DevicesListModel model});
}

/// @nodoc
class __$$GetDevicesStateSuccessCopyWithImpl<$Res>
    extends _$GetDevicesStateCopyWithImpl<$Res, _$GetDevicesStateSuccess>
    implements _$$GetDevicesStateSuccessCopyWith<$Res> {
  __$$GetDevicesStateSuccessCopyWithImpl(_$GetDevicesStateSuccess _value,
      $Res Function(_$GetDevicesStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$GetDevicesStateSuccess(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DevicesListModel,
    ));
  }
}

/// @nodoc

class _$GetDevicesStateSuccess implements GetDevicesStateSuccess {
  const _$GetDevicesStateSuccess({required this.model});

  @override
  final DevicesListModel model;

  @override
  String toString() {
    return 'GetDevicesState.success(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDevicesStateSuccess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDevicesStateSuccessCopyWith<_$GetDevicesStateSuccess> get copyWith =>
      __$$GetDevicesStateSuccessCopyWithImpl<_$GetDevicesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DevicesListModel model) success,
    required TResult Function(String error) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DevicesListModel model)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DevicesListModel model)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDevicesStateInitial value) initial,
    required TResult Function(GetDevicesStateLoading value) loading,
    required TResult Function(GetDevicesStateSuccess value) success,
    required TResult Function(GetDevicesStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDevicesStateInitial value)? initial,
    TResult? Function(GetDevicesStateLoading value)? loading,
    TResult? Function(GetDevicesStateSuccess value)? success,
    TResult? Function(GetDevicesStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDevicesStateInitial value)? initial,
    TResult Function(GetDevicesStateLoading value)? loading,
    TResult Function(GetDevicesStateSuccess value)? success,
    TResult Function(GetDevicesStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetDevicesStateSuccess implements GetDevicesState {
  const factory GetDevicesStateSuccess(
      {required final DevicesListModel model}) = _$GetDevicesStateSuccess;

  DevicesListModel get model;
  @JsonKey(ignore: true)
  _$$GetDevicesStateSuccessCopyWith<_$GetDevicesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDevicesStateErrorCopyWith<$Res> {
  factory _$$GetDevicesStateErrorCopyWith(_$GetDevicesStateError value,
          $Res Function(_$GetDevicesStateError) then) =
      __$$GetDevicesStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetDevicesStateErrorCopyWithImpl<$Res>
    extends _$GetDevicesStateCopyWithImpl<$Res, _$GetDevicesStateError>
    implements _$$GetDevicesStateErrorCopyWith<$Res> {
  __$$GetDevicesStateErrorCopyWithImpl(_$GetDevicesStateError _value,
      $Res Function(_$GetDevicesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetDevicesStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDevicesStateError implements GetDevicesStateError {
  const _$GetDevicesStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'GetDevicesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDevicesStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDevicesStateErrorCopyWith<_$GetDevicesStateError> get copyWith =>
      __$$GetDevicesStateErrorCopyWithImpl<_$GetDevicesStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DevicesListModel model) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DevicesListModel model)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DevicesListModel model)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDevicesStateInitial value) initial,
    required TResult Function(GetDevicesStateLoading value) loading,
    required TResult Function(GetDevicesStateSuccess value) success,
    required TResult Function(GetDevicesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDevicesStateInitial value)? initial,
    TResult? Function(GetDevicesStateLoading value)? loading,
    TResult? Function(GetDevicesStateSuccess value)? success,
    TResult? Function(GetDevicesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDevicesStateInitial value)? initial,
    TResult Function(GetDevicesStateLoading value)? loading,
    TResult Function(GetDevicesStateSuccess value)? success,
    TResult Function(GetDevicesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetDevicesStateError implements GetDevicesState {
  const factory GetDevicesStateError({required final String error}) =
      _$GetDevicesStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$GetDevicesStateErrorCopyWith<_$GetDevicesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
