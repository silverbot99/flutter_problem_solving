// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_rest_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPostsRestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(dynamic posts) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(dynamic posts)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(dynamic posts)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsRestStateFailed value) failed,
    required TResult Function(_GetPostsRestStateInitial value) initial,
    required TResult Function(_GetPostsRestStateSuccess value) success,
    required TResult Function(_GetPostsRestStateRefresh value) refresh,
    required TResult Function(_GetPostsRestStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostsRestStateFailed value)? failed,
    TResult? Function(_GetPostsRestStateInitial value)? initial,
    TResult? Function(_GetPostsRestStateSuccess value)? success,
    TResult? Function(_GetPostsRestStateRefresh value)? refresh,
    TResult? Function(_GetPostsRestStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsRestStateFailed value)? failed,
    TResult Function(_GetPostsRestStateInitial value)? initial,
    TResult Function(_GetPostsRestStateSuccess value)? success,
    TResult Function(_GetPostsRestStateRefresh value)? refresh,
    TResult Function(_GetPostsRestStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsRestStateCopyWith<$Res> {
  factory $GetPostsRestStateCopyWith(
          GetPostsRestState value, $Res Function(GetPostsRestState) then) =
      _$GetPostsRestStateCopyWithImpl<$Res, GetPostsRestState>;
}

/// @nodoc
class _$GetPostsRestStateCopyWithImpl<$Res, $Val extends GetPostsRestState>
    implements $GetPostsRestStateCopyWith<$Res> {
  _$GetPostsRestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetPostsRestStateFailedCopyWith<$Res> {
  factory _$$_GetPostsRestStateFailedCopyWith(_$_GetPostsRestStateFailed value,
          $Res Function(_$_GetPostsRestStateFailed) then) =
      __$$_GetPostsRestStateFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertModel alert});
}

/// @nodoc
class __$$_GetPostsRestStateFailedCopyWithImpl<$Res>
    extends _$GetPostsRestStateCopyWithImpl<$Res, _$_GetPostsRestStateFailed>
    implements _$$_GetPostsRestStateFailedCopyWith<$Res> {
  __$$_GetPostsRestStateFailedCopyWithImpl(_$_GetPostsRestStateFailed _value,
      $Res Function(_$_GetPostsRestStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alert = freezed,
  }) {
    return _then(_$_GetPostsRestStateFailed(
      alert: freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as AlertModel,
    ));
  }
}

/// @nodoc

class _$_GetPostsRestStateFailed implements _GetPostsRestStateFailed {
  const _$_GetPostsRestStateFailed({required this.alert});

  @override
  final AlertModel alert;

  @override
  String toString() {
    return 'GetPostsRestState.failed(alert: $alert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPostsRestStateFailed &&
            const DeepCollectionEquality().equals(other.alert, alert));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(alert));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPostsRestStateFailedCopyWith<_$_GetPostsRestStateFailed>
      get copyWith =>
          __$$_GetPostsRestStateFailedCopyWithImpl<_$_GetPostsRestStateFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(dynamic posts) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return failed(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(dynamic posts)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return failed?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(dynamic posts)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(alert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsRestStateFailed value) failed,
    required TResult Function(_GetPostsRestStateInitial value) initial,
    required TResult Function(_GetPostsRestStateSuccess value) success,
    required TResult Function(_GetPostsRestStateRefresh value) refresh,
    required TResult Function(_GetPostsRestStateLoading value) loading,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostsRestStateFailed value)? failed,
    TResult? Function(_GetPostsRestStateInitial value)? initial,
    TResult? Function(_GetPostsRestStateSuccess value)? success,
    TResult? Function(_GetPostsRestStateRefresh value)? refresh,
    TResult? Function(_GetPostsRestStateLoading value)? loading,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsRestStateFailed value)? failed,
    TResult Function(_GetPostsRestStateInitial value)? initial,
    TResult Function(_GetPostsRestStateSuccess value)? success,
    TResult Function(_GetPostsRestStateRefresh value)? refresh,
    TResult Function(_GetPostsRestStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetPostsRestStateFailed implements GetPostsRestState {
  const factory _GetPostsRestStateFailed({required final AlertModel alert}) =
      _$_GetPostsRestStateFailed;

  AlertModel get alert;
  @JsonKey(ignore: true)
  _$$_GetPostsRestStateFailedCopyWith<_$_GetPostsRestStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPostsRestStateInitialCopyWith<$Res> {
  factory _$$_GetPostsRestStateInitialCopyWith(
          _$_GetPostsRestStateInitial value,
          $Res Function(_$_GetPostsRestStateInitial) then) =
      __$$_GetPostsRestStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPostsRestStateInitialCopyWithImpl<$Res>
    extends _$GetPostsRestStateCopyWithImpl<$Res, _$_GetPostsRestStateInitial>
    implements _$$_GetPostsRestStateInitialCopyWith<$Res> {
  __$$_GetPostsRestStateInitialCopyWithImpl(_$_GetPostsRestStateInitial _value,
      $Res Function(_$_GetPostsRestStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPostsRestStateInitial implements _GetPostsRestStateInitial {
  const _$_GetPostsRestStateInitial();

  @override
  String toString() {
    return 'GetPostsRestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPostsRestStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(dynamic posts) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(dynamic posts)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(dynamic posts)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_GetPostsRestStateFailed value) failed,
    required TResult Function(_GetPostsRestStateInitial value) initial,
    required TResult Function(_GetPostsRestStateSuccess value) success,
    required TResult Function(_GetPostsRestStateRefresh value) refresh,
    required TResult Function(_GetPostsRestStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostsRestStateFailed value)? failed,
    TResult? Function(_GetPostsRestStateInitial value)? initial,
    TResult? Function(_GetPostsRestStateSuccess value)? success,
    TResult? Function(_GetPostsRestStateRefresh value)? refresh,
    TResult? Function(_GetPostsRestStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsRestStateFailed value)? failed,
    TResult Function(_GetPostsRestStateInitial value)? initial,
    TResult Function(_GetPostsRestStateSuccess value)? success,
    TResult Function(_GetPostsRestStateRefresh value)? refresh,
    TResult Function(_GetPostsRestStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetPostsRestStateInitial implements GetPostsRestState {
  const factory _GetPostsRestStateInitial() = _$_GetPostsRestStateInitial;
}

/// @nodoc
abstract class _$$_GetPostsRestStateSuccessCopyWith<$Res> {
  factory _$$_GetPostsRestStateSuccessCopyWith(
          _$_GetPostsRestStateSuccess value,
          $Res Function(_$_GetPostsRestStateSuccess) then) =
      __$$_GetPostsRestStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic posts});
}

/// @nodoc
class __$$_GetPostsRestStateSuccessCopyWithImpl<$Res>
    extends _$GetPostsRestStateCopyWithImpl<$Res, _$_GetPostsRestStateSuccess>
    implements _$$_GetPostsRestStateSuccessCopyWith<$Res> {
  __$$_GetPostsRestStateSuccessCopyWithImpl(_$_GetPostsRestStateSuccess _value,
      $Res Function(_$_GetPostsRestStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_GetPostsRestStateSuccess(
      posts: freezed == posts ? _value.posts! : posts,
    ));
  }
}

/// @nodoc

class _$_GetPostsRestStateSuccess implements _GetPostsRestStateSuccess {
  const _$_GetPostsRestStateSuccess({required this.posts});

  @override
  final dynamic posts;

  @override
  String toString() {
    return 'GetPostsRestState.success(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPostsRestStateSuccess &&
            const DeepCollectionEquality().equals(other.posts, posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPostsRestStateSuccessCopyWith<_$_GetPostsRestStateSuccess>
      get copyWith => __$$_GetPostsRestStateSuccessCopyWithImpl<
          _$_GetPostsRestStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(dynamic posts) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(dynamic posts)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(dynamic posts)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsRestStateFailed value) failed,
    required TResult Function(_GetPostsRestStateInitial value) initial,
    required TResult Function(_GetPostsRestStateSuccess value) success,
    required TResult Function(_GetPostsRestStateRefresh value) refresh,
    required TResult Function(_GetPostsRestStateLoading value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostsRestStateFailed value)? failed,
    TResult? Function(_GetPostsRestStateInitial value)? initial,
    TResult? Function(_GetPostsRestStateSuccess value)? success,
    TResult? Function(_GetPostsRestStateRefresh value)? refresh,
    TResult? Function(_GetPostsRestStateLoading value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsRestStateFailed value)? failed,
    TResult Function(_GetPostsRestStateInitial value)? initial,
    TResult Function(_GetPostsRestStateSuccess value)? success,
    TResult Function(_GetPostsRestStateRefresh value)? refresh,
    TResult Function(_GetPostsRestStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetPostsRestStateSuccess implements GetPostsRestState {
  const factory _GetPostsRestStateSuccess({required final dynamic posts}) =
      _$_GetPostsRestStateSuccess;

  dynamic get posts;
  @JsonKey(ignore: true)
  _$$_GetPostsRestStateSuccessCopyWith<_$_GetPostsRestStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPostsRestStateRefreshCopyWith<$Res> {
  factory _$$_GetPostsRestStateRefreshCopyWith(
          _$_GetPostsRestStateRefresh value,
          $Res Function(_$_GetPostsRestStateRefresh) then) =
      __$$_GetPostsRestStateRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPostsRestStateRefreshCopyWithImpl<$Res>
    extends _$GetPostsRestStateCopyWithImpl<$Res, _$_GetPostsRestStateRefresh>
    implements _$$_GetPostsRestStateRefreshCopyWith<$Res> {
  __$$_GetPostsRestStateRefreshCopyWithImpl(_$_GetPostsRestStateRefresh _value,
      $Res Function(_$_GetPostsRestStateRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPostsRestStateRefresh implements _GetPostsRestStateRefresh {
  const _$_GetPostsRestStateRefresh();

  @override
  String toString() {
    return 'GetPostsRestState.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPostsRestStateRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(dynamic posts) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(dynamic posts)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(dynamic posts)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPostsRestStateFailed value) failed,
    required TResult Function(_GetPostsRestStateInitial value) initial,
    required TResult Function(_GetPostsRestStateSuccess value) success,
    required TResult Function(_GetPostsRestStateRefresh value) refresh,
    required TResult Function(_GetPostsRestStateLoading value) loading,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostsRestStateFailed value)? failed,
    TResult? Function(_GetPostsRestStateInitial value)? initial,
    TResult? Function(_GetPostsRestStateSuccess value)? success,
    TResult? Function(_GetPostsRestStateRefresh value)? refresh,
    TResult? Function(_GetPostsRestStateLoading value)? loading,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsRestStateFailed value)? failed,
    TResult Function(_GetPostsRestStateInitial value)? initial,
    TResult Function(_GetPostsRestStateSuccess value)? success,
    TResult Function(_GetPostsRestStateRefresh value)? refresh,
    TResult Function(_GetPostsRestStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _GetPostsRestStateRefresh implements GetPostsRestState {
  const factory _GetPostsRestStateRefresh() = _$_GetPostsRestStateRefresh;
}

/// @nodoc
abstract class _$$_GetPostsRestStateLoadingCopyWith<$Res> {
  factory _$$_GetPostsRestStateLoadingCopyWith(
          _$_GetPostsRestStateLoading value,
          $Res Function(_$_GetPostsRestStateLoading) then) =
      __$$_GetPostsRestStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPostsRestStateLoadingCopyWithImpl<$Res>
    extends _$GetPostsRestStateCopyWithImpl<$Res, _$_GetPostsRestStateLoading>
    implements _$$_GetPostsRestStateLoadingCopyWith<$Res> {
  __$$_GetPostsRestStateLoadingCopyWithImpl(_$_GetPostsRestStateLoading _value,
      $Res Function(_$_GetPostsRestStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPostsRestStateLoading implements _GetPostsRestStateLoading {
  const _$_GetPostsRestStateLoading();

  @override
  String toString() {
    return 'GetPostsRestState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPostsRestStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlertModel alert) failed,
    required TResult Function() initial,
    required TResult Function(dynamic posts) success,
    required TResult Function() refresh,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlertModel alert)? failed,
    TResult? Function()? initial,
    TResult? Function(dynamic posts)? success,
    TResult? Function()? refresh,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlertModel alert)? failed,
    TResult Function()? initial,
    TResult Function(dynamic posts)? success,
    TResult Function()? refresh,
    TResult Function()? loading,
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
    required TResult Function(_GetPostsRestStateFailed value) failed,
    required TResult Function(_GetPostsRestStateInitial value) initial,
    required TResult Function(_GetPostsRestStateSuccess value) success,
    required TResult Function(_GetPostsRestStateRefresh value) refresh,
    required TResult Function(_GetPostsRestStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPostsRestStateFailed value)? failed,
    TResult? Function(_GetPostsRestStateInitial value)? initial,
    TResult? Function(_GetPostsRestStateSuccess value)? success,
    TResult? Function(_GetPostsRestStateRefresh value)? refresh,
    TResult? Function(_GetPostsRestStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPostsRestStateFailed value)? failed,
    TResult Function(_GetPostsRestStateInitial value)? initial,
    TResult Function(_GetPostsRestStateSuccess value)? success,
    TResult Function(_GetPostsRestStateRefresh value)? refresh,
    TResult Function(_GetPostsRestStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetPostsRestStateLoading implements GetPostsRestState {
  const factory _GetPostsRestStateLoading() = _$_GetPostsRestStateLoading;
}
