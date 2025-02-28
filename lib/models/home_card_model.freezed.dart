// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeCardModel _$HomeCardModelFromJson(Map<String, dynamic> json) {
  return _HomeCardModel.fromJson(json);
}

/// @nodoc
mixin _$HomeCardModel {
  int? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @IconDataConverter()
  IconData? get icon => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;

  /// Serializes this HomeCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeCardModelCopyWith<HomeCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCardModelCopyWith<$Res> {
  factory $HomeCardModelCopyWith(
          HomeCardModel value, $Res Function(HomeCardModel) then) =
      _$HomeCardModelCopyWithImpl<$Res, HomeCardModel>;
  @useResult
  $Res call(
      {int? uid,
      String? name,
      @IconDataConverter() IconData? icon,
      String? route});
}

/// @nodoc
class _$HomeCardModelCopyWithImpl<$Res, $Val extends HomeCardModel>
    implements $HomeCardModelCopyWith<$Res> {
  _$HomeCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeCardModelImplCopyWith<$Res>
    implements $HomeCardModelCopyWith<$Res> {
  factory _$$HomeCardModelImplCopyWith(
          _$HomeCardModelImpl value, $Res Function(_$HomeCardModelImpl) then) =
      __$$HomeCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? uid,
      String? name,
      @IconDataConverter() IconData? icon,
      String? route});
}

/// @nodoc
class __$$HomeCardModelImplCopyWithImpl<$Res>
    extends _$HomeCardModelCopyWithImpl<$Res, _$HomeCardModelImpl>
    implements _$$HomeCardModelImplCopyWith<$Res> {
  __$$HomeCardModelImplCopyWithImpl(
      _$HomeCardModelImpl _value, $Res Function(_$HomeCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? route = freezed,
  }) {
    return _then(_$HomeCardModelImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeCardModelImpl implements _HomeCardModel {
  const _$HomeCardModelImpl(
      {this.uid, this.name, @IconDataConverter() this.icon, this.route});

  factory _$HomeCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeCardModelImplFromJson(json);

  @override
  final int? uid;
  @override
  final String? name;
  @override
  @IconDataConverter()
  final IconData? icon;
  @override
  final String? route;

  @override
  String toString() {
    return 'HomeCardModel(uid: $uid, name: $name, icon: $icon, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeCardModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, icon, route);

  /// Create a copy of HomeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeCardModelImplCopyWith<_$HomeCardModelImpl> get copyWith =>
      __$$HomeCardModelImplCopyWithImpl<_$HomeCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeCardModelImplToJson(
      this,
    );
  }
}

abstract class _HomeCardModel implements HomeCardModel {
  const factory _HomeCardModel(
      {final int? uid,
      final String? name,
      @IconDataConverter() final IconData? icon,
      final String? route}) = _$HomeCardModelImpl;

  factory _HomeCardModel.fromJson(Map<String, dynamic> json) =
      _$HomeCardModelImpl.fromJson;

  @override
  int? get uid;
  @override
  String? get name;
  @override
  @IconDataConverter()
  IconData? get icon;
  @override
  String? get route;

  /// Create a copy of HomeCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeCardModelImplCopyWith<_$HomeCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
