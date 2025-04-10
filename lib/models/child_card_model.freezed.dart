// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChildCardModel _$ChildCardModelFromJson(Map<String, dynamic> json) {
  return _ChildCardModel.fromJson(json);
}

/// @nodoc
mixin _$ChildCardModel {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;

  /// Serializes this ChildCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildCardModelCopyWith<ChildCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCardModelCopyWith<$Res> {
  factory $ChildCardModelCopyWith(
          ChildCardModel value, $Res Function(ChildCardModel) then) =
      _$ChildCardModelCopyWithImpl<$Res, ChildCardModel>;
  @useResult
  $Res call({String? title, String? subtitle});
}

/// @nodoc
class _$ChildCardModelCopyWithImpl<$Res, $Val extends ChildCardModel>
    implements $ChildCardModelCopyWith<$Res> {
  _$ChildCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildCardModelImplCopyWith<$Res>
    implements $ChildCardModelCopyWith<$Res> {
  factory _$$ChildCardModelImplCopyWith(_$ChildCardModelImpl value,
          $Res Function(_$ChildCardModelImpl) then) =
      __$$ChildCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? subtitle});
}

/// @nodoc
class __$$ChildCardModelImplCopyWithImpl<$Res>
    extends _$ChildCardModelCopyWithImpl<$Res, _$ChildCardModelImpl>
    implements _$$ChildCardModelImplCopyWith<$Res> {
  __$$ChildCardModelImplCopyWithImpl(
      _$ChildCardModelImpl _value, $Res Function(_$ChildCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_$ChildCardModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildCardModelImpl implements _ChildCardModel {
  const _$ChildCardModelImpl({this.title, this.subtitle});

  factory _$ChildCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildCardModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? subtitle;

  @override
  String toString() {
    return 'ChildCardModel(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildCardModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle);

  /// Create a copy of ChildCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildCardModelImplCopyWith<_$ChildCardModelImpl> get copyWith =>
      __$$ChildCardModelImplCopyWithImpl<_$ChildCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildCardModelImplToJson(
      this,
    );
  }
}

abstract class _ChildCardModel implements ChildCardModel {
  const factory _ChildCardModel({final String? title, final String? subtitle}) =
      _$ChildCardModelImpl;

  factory _ChildCardModel.fromJson(Map<String, dynamic> json) =
      _$ChildCardModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get subtitle;

  /// Create a copy of ChildCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildCardModelImplCopyWith<_$ChildCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
