// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_rest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostRestModel _$PostRestModelFromJson(Map<String, dynamic> json) {
  return _PostRestModel.fromJson(json);
}

/// @nodoc
mixin _$PostRestModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostRestModelCopyWith<PostRestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRestModelCopyWith<$Res> {
  factory $PostRestModelCopyWith(
          PostRestModel value, $Res Function(PostRestModel) then) =
      _$PostRestModelCopyWithImpl<$Res, PostRestModel>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$PostRestModelCopyWithImpl<$Res, $Val extends PostRestModel>
    implements $PostRestModelCopyWith<$Res> {
  _$PostRestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostRestModelCopyWith<$Res>
    implements $PostRestModelCopyWith<$Res> {
  factory _$$_PostRestModelCopyWith(
          _$_PostRestModel value, $Res Function(_$_PostRestModel) then) =
      __$$_PostRestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$_PostRestModelCopyWithImpl<$Res>
    extends _$PostRestModelCopyWithImpl<$Res, _$_PostRestModel>
    implements _$$_PostRestModelCopyWith<$Res> {
  __$$_PostRestModelCopyWithImpl(
      _$_PostRestModel _value, $Res Function(_$_PostRestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$_PostRestModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostRestModel with DiagnosticableTreeMixin implements _PostRestModel {
  const _$_PostRestModel({required this.id, required this.title});

  factory _$_PostRestModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostRestModelFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostRestModel(id: $id, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostRestModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostRestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostRestModelCopyWith<_$_PostRestModel> get copyWith =>
      __$$_PostRestModelCopyWithImpl<_$_PostRestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostRestModelToJson(
      this,
    );
  }
}

abstract class _PostRestModel implements PostRestModel {
  const factory _PostRestModel(
      {required final String id,
      required final String title}) = _$_PostRestModel;

  factory _PostRestModel.fromJson(Map<String, dynamic> json) =
      _$_PostRestModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PostRestModelCopyWith<_$_PostRestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
