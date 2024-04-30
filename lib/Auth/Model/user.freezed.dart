// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String? get first_name => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get role_id => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get last_name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  dynamic get phone => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get organiosationCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) String? first_name,
      @HiveField(5) int? role_id,
      @HiveField(6) int? id,
      @HiveField(1) String? last_name,
      @HiveField(2) String? email,
      @HiveField(3) dynamic phone,
      @HiveField(4) String? organiosationCode});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? role_id = freezed,
    Object? id = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? organiosationCode = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      role_id: freezed == role_id
          ? _value.role_id
          : role_id // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      organiosationCode: freezed == organiosationCode
          ? _value.organiosationCode
          : organiosationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? first_name,
      @HiveField(5) int? role_id,
      @HiveField(6) int? id,
      @HiveField(1) String? last_name,
      @HiveField(2) String? email,
      @HiveField(3) dynamic phone,
      @HiveField(4) String? organiosationCode});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? role_id = freezed,
    Object? id = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? organiosationCode = freezed,
  }) {
    return _then(_$UserImpl(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      role_id: freezed == role_id
          ? _value.role_id
          : role_id // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      organiosationCode: freezed == organiosationCode
          ? _value.organiosationCode
          : organiosationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@HiveField(0) this.first_name,
      @HiveField(5) this.role_id,
      @HiveField(6) this.id,
      @HiveField(1) this.last_name,
      @HiveField(2) this.email,
      @HiveField(3) this.phone,
      @HiveField(4) this.organiosationCode});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @HiveField(0)
  final String? first_name;
  @override
  @HiveField(5)
  final int? role_id;
  @override
  @HiveField(6)
  final int? id;
  @override
  @HiveField(1)
  final String? last_name;
  @override
  @HiveField(2)
  final String? email;
  @override
  @HiveField(3)
  final dynamic phone;
  @override
  @HiveField(4)
  final String? organiosationCode;

  @override
  String toString() {
    return 'User(first_name: $first_name, role_id: $role_id, id: $id, last_name: $last_name, email: $email, phone: $phone, organiosationCode: $organiosationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.role_id, role_id) || other.role_id == role_id) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            (identical(other.organiosationCode, organiosationCode) ||
                other.organiosationCode == organiosationCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      first_name,
      role_id,
      id,
      last_name,
      email,
      const DeepCollectionEquality().hash(phone),
      organiosationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0) final String? first_name,
      @HiveField(5) final int? role_id,
      @HiveField(6) final int? id,
      @HiveField(1) final String? last_name,
      @HiveField(2) final String? email,
      @HiveField(3) final dynamic phone,
      @HiveField(4) final String? organiosationCode}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  String? get first_name;
  @override
  @HiveField(5)
  int? get role_id;
  @override
  @HiveField(6)
  int? get id;
  @override
  @HiveField(1)
  String? get last_name;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  dynamic get phone;
  @override
  @HiveField(4)
  String? get organiosationCode;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}