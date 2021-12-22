// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Registration _$RegistrationFromJson(Map<String, dynamic> json) {
  return _Registration.fromJson(json);
}

/// @nodoc
class _$RegistrationTearOff {
  const _$RegistrationTearOff();

  _Registration call({int? id, int? student, int? subject}) {
    return _Registration(
      id: id,
      student: student,
      subject: subject,
    );
  }

  Registration fromJson(Map<String, Object?> json) {
    return Registration.fromJson(json);
  }
}

/// @nodoc
const $Registration = _$RegistrationTearOff();

/// @nodoc
mixin _$Registration {
  int? get id => throw _privateConstructorUsedError;
  int? get student => throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationCopyWith<Registration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationCopyWith<$Res> {
  factory $RegistrationCopyWith(
          Registration value, $Res Function(Registration) then) =
      _$RegistrationCopyWithImpl<$Res>;
  $Res call({int? id, int? student, int? subject});
}

/// @nodoc
class _$RegistrationCopyWithImpl<$Res> implements $RegistrationCopyWith<$Res> {
  _$RegistrationCopyWithImpl(this._value, this._then);

  final Registration _value;
  // ignore: unused_field
  final $Res Function(Registration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RegistrationCopyWith<$Res>
    implements $RegistrationCopyWith<$Res> {
  factory _$RegistrationCopyWith(
          _Registration value, $Res Function(_Registration) then) =
      __$RegistrationCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? student, int? subject});
}

/// @nodoc
class __$RegistrationCopyWithImpl<$Res> extends _$RegistrationCopyWithImpl<$Res>
    implements _$RegistrationCopyWith<$Res> {
  __$RegistrationCopyWithImpl(
      _Registration _value, $Res Function(_Registration) _then)
      : super(_value, (v) => _then(v as _Registration));

  @override
  _Registration get _value => super._value as _Registration;

  @override
  $Res call({
    Object? id = freezed,
    Object? student = freezed,
    Object? subject = freezed,
  }) {
    return _then(_Registration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Registration extends _Registration with DiagnosticableTreeMixin {
  const _$_Registration({this.id, this.student, this.subject}) : super._();

  factory _$_Registration.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationFromJson(json);

  @override
  final int? id;
  @override
  final int? student;
  @override
  final int? subject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Registration(id: $id, student: $student, subject: $subject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Registration'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('student', student))
      ..add(DiagnosticsProperty('subject', subject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Registration &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.student, student) &&
            const DeepCollectionEquality().equals(other.subject, subject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(student),
      const DeepCollectionEquality().hash(subject));

  @JsonKey(ignore: true)
  @override
  _$RegistrationCopyWith<_Registration> get copyWith =>
      __$RegistrationCopyWithImpl<_Registration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationToJson(this);
  }
}

abstract class _Registration extends Registration {
  const factory _Registration({int? id, int? student, int? subject}) =
      _$_Registration;
  const _Registration._() : super._();

  factory _Registration.fromJson(Map<String, dynamic> json) =
      _$_Registration.fromJson;

  @override
  int? get id;
  @override
  int? get student;
  @override
  int? get subject;
  @override
  @JsonKey(ignore: true)
  _$RegistrationCopyWith<_Registration> get copyWith =>
      throw _privateConstructorUsedError;
}
