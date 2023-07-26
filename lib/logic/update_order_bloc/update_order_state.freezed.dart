// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateOrderState {
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
    required TResult Function(UpdateOrderBlocStateInitial value) initial,
    required TResult Function(UpdateOrderBlocStateLoading value) loading,
    required TResult Function(UpdateOrderBlocStateSuccess value) success,
    required TResult Function(UpdateOrderBlocStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderBlocStateInitial value)? initial,
    TResult? Function(UpdateOrderBlocStateLoading value)? loading,
    TResult? Function(UpdateOrderBlocStateSuccess value)? success,
    TResult? Function(UpdateOrderBlocStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderBlocStateInitial value)? initial,
    TResult Function(UpdateOrderBlocStateLoading value)? loading,
    TResult Function(UpdateOrderBlocStateSuccess value)? success,
    TResult Function(UpdateOrderBlocStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderStateCopyWith<$Res> {
  factory $UpdateOrderStateCopyWith(
          UpdateOrderState value, $Res Function(UpdateOrderState) then) =
      _$UpdateOrderStateCopyWithImpl<$Res, UpdateOrderState>;
}

/// @nodoc
class _$UpdateOrderStateCopyWithImpl<$Res, $Val extends UpdateOrderState>
    implements $UpdateOrderStateCopyWith<$Res> {
  _$UpdateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateOrderBlocStateInitialCopyWith<$Res> {
  factory _$$UpdateOrderBlocStateInitialCopyWith(
          _$UpdateOrderBlocStateInitial value,
          $Res Function(_$UpdateOrderBlocStateInitial) then) =
      __$$UpdateOrderBlocStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateOrderBlocStateInitialCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderBlocStateInitial>
    implements _$$UpdateOrderBlocStateInitialCopyWith<$Res> {
  __$$UpdateOrderBlocStateInitialCopyWithImpl(
      _$UpdateOrderBlocStateInitial _value,
      $Res Function(_$UpdateOrderBlocStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateOrderBlocStateInitial implements UpdateOrderBlocStateInitial {
  const _$UpdateOrderBlocStateInitial();

  @override
  String toString() {
    return 'UpdateOrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderBlocStateInitial);
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
    required TResult Function(UpdateOrderBlocStateInitial value) initial,
    required TResult Function(UpdateOrderBlocStateLoading value) loading,
    required TResult Function(UpdateOrderBlocStateSuccess value) success,
    required TResult Function(UpdateOrderBlocStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderBlocStateInitial value)? initial,
    TResult? Function(UpdateOrderBlocStateLoading value)? loading,
    TResult? Function(UpdateOrderBlocStateSuccess value)? success,
    TResult? Function(UpdateOrderBlocStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderBlocStateInitial value)? initial,
    TResult Function(UpdateOrderBlocStateLoading value)? loading,
    TResult Function(UpdateOrderBlocStateSuccess value)? success,
    TResult Function(UpdateOrderBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderBlocStateInitial implements UpdateOrderState {
  const factory UpdateOrderBlocStateInitial() = _$UpdateOrderBlocStateInitial;
}

/// @nodoc
abstract class _$$UpdateOrderBlocStateLoadingCopyWith<$Res> {
  factory _$$UpdateOrderBlocStateLoadingCopyWith(
          _$UpdateOrderBlocStateLoading value,
          $Res Function(_$UpdateOrderBlocStateLoading) then) =
      __$$UpdateOrderBlocStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateOrderBlocStateLoadingCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderBlocStateLoading>
    implements _$$UpdateOrderBlocStateLoadingCopyWith<$Res> {
  __$$UpdateOrderBlocStateLoadingCopyWithImpl(
      _$UpdateOrderBlocStateLoading _value,
      $Res Function(_$UpdateOrderBlocStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateOrderBlocStateLoading implements UpdateOrderBlocStateLoading {
  const _$UpdateOrderBlocStateLoading();

  @override
  String toString() {
    return 'UpdateOrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderBlocStateLoading);
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
    required TResult Function(UpdateOrderBlocStateInitial value) initial,
    required TResult Function(UpdateOrderBlocStateLoading value) loading,
    required TResult Function(UpdateOrderBlocStateSuccess value) success,
    required TResult Function(UpdateOrderBlocStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderBlocStateInitial value)? initial,
    TResult? Function(UpdateOrderBlocStateLoading value)? loading,
    TResult? Function(UpdateOrderBlocStateSuccess value)? success,
    TResult? Function(UpdateOrderBlocStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderBlocStateInitial value)? initial,
    TResult Function(UpdateOrderBlocStateLoading value)? loading,
    TResult Function(UpdateOrderBlocStateSuccess value)? success,
    TResult Function(UpdateOrderBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderBlocStateLoading implements UpdateOrderState {
  const factory UpdateOrderBlocStateLoading() = _$UpdateOrderBlocStateLoading;
}

/// @nodoc
abstract class _$$UpdateOrderBlocStateSuccessCopyWith<$Res> {
  factory _$$UpdateOrderBlocStateSuccessCopyWith(
          _$UpdateOrderBlocStateSuccess value,
          $Res Function(_$UpdateOrderBlocStateSuccess) then) =
      __$$UpdateOrderBlocStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateOrderBlocStateSuccessCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderBlocStateSuccess>
    implements _$$UpdateOrderBlocStateSuccessCopyWith<$Res> {
  __$$UpdateOrderBlocStateSuccessCopyWithImpl(
      _$UpdateOrderBlocStateSuccess _value,
      $Res Function(_$UpdateOrderBlocStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateOrderBlocStateSuccess implements UpdateOrderBlocStateSuccess {
  const _$UpdateOrderBlocStateSuccess();

  @override
  String toString() {
    return 'UpdateOrderState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderBlocStateSuccess);
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
    required TResult Function(UpdateOrderBlocStateInitial value) initial,
    required TResult Function(UpdateOrderBlocStateLoading value) loading,
    required TResult Function(UpdateOrderBlocStateSuccess value) success,
    required TResult Function(UpdateOrderBlocStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderBlocStateInitial value)? initial,
    TResult? Function(UpdateOrderBlocStateLoading value)? loading,
    TResult? Function(UpdateOrderBlocStateSuccess value)? success,
    TResult? Function(UpdateOrderBlocStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderBlocStateInitial value)? initial,
    TResult Function(UpdateOrderBlocStateLoading value)? loading,
    TResult Function(UpdateOrderBlocStateSuccess value)? success,
    TResult Function(UpdateOrderBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderBlocStateSuccess implements UpdateOrderState {
  const factory UpdateOrderBlocStateSuccess() = _$UpdateOrderBlocStateSuccess;
}

/// @nodoc
abstract class _$$UpdateOrderBlocStateErrorCopyWith<$Res> {
  factory _$$UpdateOrderBlocStateErrorCopyWith(
          _$UpdateOrderBlocStateError value,
          $Res Function(_$UpdateOrderBlocStateError) then) =
      __$$UpdateOrderBlocStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$UpdateOrderBlocStateErrorCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res, _$UpdateOrderBlocStateError>
    implements _$$UpdateOrderBlocStateErrorCopyWith<$Res> {
  __$$UpdateOrderBlocStateErrorCopyWithImpl(_$UpdateOrderBlocStateError _value,
      $Res Function(_$UpdateOrderBlocStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpdateOrderBlocStateError(
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

class _$UpdateOrderBlocStateError implements UpdateOrderBlocStateError {
  const _$UpdateOrderBlocStateError({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'UpdateOrderState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderBlocStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderBlocStateErrorCopyWith<_$UpdateOrderBlocStateError>
      get copyWith => __$$UpdateOrderBlocStateErrorCopyWithImpl<
          _$UpdateOrderBlocStateError>(this, _$identity);

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
    required TResult Function(UpdateOrderBlocStateInitial value) initial,
    required TResult Function(UpdateOrderBlocStateLoading value) loading,
    required TResult Function(UpdateOrderBlocStateSuccess value) success,
    required TResult Function(UpdateOrderBlocStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateOrderBlocStateInitial value)? initial,
    TResult? Function(UpdateOrderBlocStateLoading value)? loading,
    TResult? Function(UpdateOrderBlocStateSuccess value)? success,
    TResult? Function(UpdateOrderBlocStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateOrderBlocStateInitial value)? initial,
    TResult Function(UpdateOrderBlocStateLoading value)? loading,
    TResult Function(UpdateOrderBlocStateSuccess value)? success,
    TResult Function(UpdateOrderBlocStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderBlocStateError implements UpdateOrderState {
  const factory UpdateOrderBlocStateError({required final KFailure error}) =
      _$UpdateOrderBlocStateError;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$UpdateOrderBlocStateErrorCopyWith<_$UpdateOrderBlocStateError>
      get copyWith => throw _privateConstructorUsedError;
}
