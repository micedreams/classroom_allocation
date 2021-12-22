// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Classroom _$ClassroomFromJson(Map<String, dynamic> json) {
  return _Classroom.fromJson(json);
}

/// @nodoc
class _$ClassroomTearOff {
  const _$ClassroomTearOff();

  _Classroom call(
      {int? id, String? name, String? layout, int? size, int? subject}) {
    return _Classroom(
      id: id,
      name: name,
      layout: layout,
      size: size,
      subject: subject,
    );
  }

  Classroom fromJson(Map<String, Object?> json) {
    return Classroom.fromJson(json);
  }
}

/// @nodoc
const $Classroom = _$ClassroomTearOff();

/// @nodoc
mixin _$Classroom {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get subject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? layout, int? size, int? subject});
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res> implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  final Classroom _value;
  // ignore: unused_field
  final $Res Function(Classroom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? layout = freezed,
    Object? size = freezed,
    Object? subject = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      layout: layout == freezed
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ClassroomCopyWith<$Res> implements $ClassroomCopyWith<$Res> {
  factory _$ClassroomCopyWith(
          _Classroom value, $Res Function(_Classroom) then) =
      __$ClassroomCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? layout, int? size, int? subject});
}

/// @nodoc
class __$ClassroomCopyWithImpl<$Res> extends _$ClassroomCopyWithImpl<$Res>
    implements _$ClassroomCopyWith<$Res> {
  __$ClassroomCopyWithImpl(_Classroom _value, $Res Function(_Classroom) _then)
      : super(_value, (v) => _then(v as _Classroom));

  @override
  _Classroom get _value => super._value as _Classroom;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? layout = freezed,
    Object? size = freezed,
    Object? subject = freezed,
  }) {
    return _then(_Classroom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      layout: layout == freezed
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
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
class _$_Classroom extends _Classroom with DiagnosticableTreeMixin {
  const _$_Classroom({this.id, this.name, this.layout, this.size, this.subject})
      : super._();

  factory _$_Classroom.fromJson(Map<String, dynamic> json) =>
      _$$_ClassroomFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? layout;
  @override
  final int? size;
  @override
  final int? subject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Classroom(id: $id, name: $name, layout: $layout, size: $size, subject: $subject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Classroom'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('layout', layout))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('subject', subject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Classroom &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.layout, layout) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.subject, subject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(layout),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(subject));

  @JsonKey(ignore: true)
  @override
  _$ClassroomCopyWith<_Classroom> get copyWith =>
      __$ClassroomCopyWithImpl<_Classroom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassroomToJson(this);
  }
}

abstract class _Classroom extends Classroom {
  const factory _Classroom(
      {int? id,
      String? name,
      String? layout,
      int? size,
      int? subject}) = _$_Classroom;
  const _Classroom._() : super._();

  factory _Classroom.fromJson(Map<String, dynamic> json) =
      _$_Classroom.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get layout;
  @override
  int? get size;
  @override
  int? get subject;
  @override
  @JsonKey(ignore: true)
  _$ClassroomCopyWith<_Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}
