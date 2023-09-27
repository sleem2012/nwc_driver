// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_commands_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendCommandsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendCommandsStateInitial value) initial,
    required TResult Function(SendCommandsStateLoading value) loading,
    required TResult Function(SendCommandsStateSuccess value) success,
    required TResult Function(SendCommandsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCommandsStateInitial value)? initial,
    TResult? Function(SendCommandsStateLoading value)? loading,
    TResult? Function(SendCommandsStateSuccess value)? success,
    TResult? Function(SendCommandsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCommandsStateInitial value)? initial,
    TResult Function(SendCommandsStateLoading value)? loading,
    TResult Function(SendCommandsStateSuccess value)? success,
    TResult Function(SendCommandsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCommandsStateCopyWith<$Res> {
  factory $SendCommandsStateCopyWith(
          SendCommandsState value, $Res Function(SendCommandsState) then) =
      _$SendCommandsStateCopyWithImpl<$Res, SendCommandsState>;
}

/// @nodoc
class _$SendCommandsStateCopyWithImpl<$Res, $Val extends SendCommandsState>
    implements $SendCommandsStateCopyWith<$Res> {
  _$SendCommandsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendCommandsStateInitialCopyWith<$Res> {
  factory _$$SendCommandsStateInitialCopyWith(_$SendCommandsStateInitial value,
          $Res Function(_$SendCommandsStateInitial) then) =
      __$$SendCommandsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendCommandsStateInitialCopyWithImpl<$Res>
    extends _$SendCommandsStateCopyWithImpl<$Res, _$SendCommandsStateInitial>
    implements _$$SendCommandsStateInitialCopyWith<$Res> {
  __$$SendCommandsStateInitialCopyWithImpl(_$SendCommandsStateInitial _value,
      $Res Function(_$SendCommandsStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendCommandsStateInitial implements SendCommandsStateInitial {
  const _$SendCommandsStateInitial();

  @override
  String toString() {
    return 'SendCommandsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCommandsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
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
    required TResult Function(SendCommandsStateInitial value) initial,
    required TResult Function(SendCommandsStateLoading value) loading,
    required TResult Function(SendCommandsStateSuccess value) success,
    required TResult Function(SendCommandsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCommandsStateInitial value)? initial,
    TResult? Function(SendCommandsStateLoading value)? loading,
    TResult? Function(SendCommandsStateSuccess value)? success,
    TResult? Function(SendCommandsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCommandsStateInitial value)? initial,
    TResult Function(SendCommandsStateLoading value)? loading,
    TResult Function(SendCommandsStateSuccess value)? success,
    TResult Function(SendCommandsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SendCommandsStateInitial implements SendCommandsState {
  const factory SendCommandsStateInitial() = _$SendCommandsStateInitial;
}

/// @nodoc
abstract class _$$SendCommandsStateLoadingCopyWith<$Res> {
  factory _$$SendCommandsStateLoadingCopyWith(_$SendCommandsStateLoading value,
          $Res Function(_$SendCommandsStateLoading) then) =
      __$$SendCommandsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendCommandsStateLoadingCopyWithImpl<$Res>
    extends _$SendCommandsStateCopyWithImpl<$Res, _$SendCommandsStateLoading>
    implements _$$SendCommandsStateLoadingCopyWith<$Res> {
  __$$SendCommandsStateLoadingCopyWithImpl(_$SendCommandsStateLoading _value,
      $Res Function(_$SendCommandsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendCommandsStateLoading implements SendCommandsStateLoading {
  const _$SendCommandsStateLoading();

  @override
  String toString() {
    return 'SendCommandsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCommandsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
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
    required TResult Function(SendCommandsStateInitial value) initial,
    required TResult Function(SendCommandsStateLoading value) loading,
    required TResult Function(SendCommandsStateSuccess value) success,
    required TResult Function(SendCommandsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCommandsStateInitial value)? initial,
    TResult? Function(SendCommandsStateLoading value)? loading,
    TResult? Function(SendCommandsStateSuccess value)? success,
    TResult? Function(SendCommandsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCommandsStateInitial value)? initial,
    TResult Function(SendCommandsStateLoading value)? loading,
    TResult Function(SendCommandsStateSuccess value)? success,
    TResult Function(SendCommandsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendCommandsStateLoading implements SendCommandsState {
  const factory SendCommandsStateLoading() = _$SendCommandsStateLoading;
}

/// @nodoc
abstract class _$$SendCommandsStateSuccessCopyWith<$Res> {
  factory _$$SendCommandsStateSuccessCopyWith(_$SendCommandsStateSuccess value,
          $Res Function(_$SendCommandsStateSuccess) then) =
      __$$SendCommandsStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendCommandsStateSuccessCopyWithImpl<$Res>
    extends _$SendCommandsStateCopyWithImpl<$Res, _$SendCommandsStateSuccess>
    implements _$$SendCommandsStateSuccessCopyWith<$Res> {
  __$$SendCommandsStateSuccessCopyWithImpl(_$SendCommandsStateSuccess _value,
      $Res Function(_$SendCommandsStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendCommandsStateSuccess implements SendCommandsStateSuccess {
  const _$SendCommandsStateSuccess();

  @override
  String toString() {
    return 'SendCommandsState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCommandsStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendCommandsStateInitial value) initial,
    required TResult Function(SendCommandsStateLoading value) loading,
    required TResult Function(SendCommandsStateSuccess value) success,
    required TResult Function(SendCommandsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCommandsStateInitial value)? initial,
    TResult? Function(SendCommandsStateLoading value)? loading,
    TResult? Function(SendCommandsStateSuccess value)? success,
    TResult? Function(SendCommandsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCommandsStateInitial value)? initial,
    TResult Function(SendCommandsStateLoading value)? loading,
    TResult Function(SendCommandsStateSuccess value)? success,
    TResult Function(SendCommandsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendCommandsStateSuccess implements SendCommandsState {
  const factory SendCommandsStateSuccess() = _$SendCommandsStateSuccess;
}

/// @nodoc
abstract class _$$SendCommandsStateErrorCopyWith<$Res> {
  factory _$$SendCommandsStateErrorCopyWith(_$SendCommandsStateError value,
          $Res Function(_$SendCommandsStateError) then) =
      __$$SendCommandsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$SendCommandsStateErrorCopyWithImpl<$Res>
    extends _$SendCommandsStateCopyWithImpl<$Res, _$SendCommandsStateError>
    implements _$$SendCommandsStateErrorCopyWith<$Res> {
  __$$SendCommandsStateErrorCopyWithImpl(_$SendCommandsStateError _value,
      $Res Function(_$SendCommandsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SendCommandsStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as KFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KFailureCopyWith<$Res> get error {
    return $KFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$SendCommandsStateError implements SendCommandsStateError {
  const _$SendCommandsStateError({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'SendCommandsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCommandsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCommandsStateErrorCopyWith<_$SendCommandsStateError> get copyWith =>
      __$$SendCommandsStateErrorCopyWithImpl<_$SendCommandsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
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
    required TResult Function(SendCommandsStateInitial value) initial,
    required TResult Function(SendCommandsStateLoading value) loading,
    required TResult Function(SendCommandsStateSuccess value) success,
    required TResult Function(SendCommandsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendCommandsStateInitial value)? initial,
    TResult? Function(SendCommandsStateLoading value)? loading,
    TResult? Function(SendCommandsStateSuccess value)? success,
    TResult? Function(SendCommandsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendCommandsStateInitial value)? initial,
    TResult Function(SendCommandsStateLoading value)? loading,
    TResult Function(SendCommandsStateSuccess value)? success,
    TResult Function(SendCommandsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SendCommandsStateError implements SendCommandsState {
  const factory SendCommandsStateError({required final KFailure error}) =
      _$SendCommandsStateError;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$SendCommandsStateErrorCopyWith<_$SendCommandsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}