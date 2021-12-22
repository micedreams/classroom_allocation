// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
class _$SubjectTearOff {
  const _$SubjectTearOff();

  _Subject call({int? id, String? name, String? teacher, int? credits}) {
    return _Subject(
      id: id,
      name: name,
      teacher: teacher,
      credits: credits,
    );
  }

  Subject fromJson(Map<String, Object?> json) {
    return Subject.fromJson(json);
  }
}

/// @nodoc
const $Subject = _$SubjectTearOff();

/// @nodoc
mixin _$Subject {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  int? get credits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? teacher, int? credits});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res> implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  final Subject _value;
  // ignore: unused_field
  final $Res Function(Subject) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? teacher = freezed,
    Object? credits = freezed,
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
      teacher: teacher == freezed
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      credits: credits == freezed
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SubjectCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$SubjectCopyWith(_Subject value, $Res Function(_Subject) then) =
      __$SubjectCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? teacher, int? credits});
}

/// @nodoc
class __$SubjectCopyWithImpl<$Res> extends _$SubjectCopyWithImpl<$Res>
    implements _$SubjectCopyWith<$Res> {
  __$SubjectCopyWithImpl(_Subject _value, $Res Function(_Subject) _then)
      : super(_value, (v) => _then(v as _Subject));

  @override
  _Subject get _value => super._value as _Subject;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? teacher = freezed,
    Object? credits = freezed,
  }) {
    return _then(_Subject(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: teacher == freezed
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      credits: credits == freezed
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subject extends _Subject with DiagnosticableTreeMixin {
  const _$_Subject({this.id, this.name, this.teacher, this.credits})
      : super._();

  factory _$_Subject.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? teacher;
  @override
  final int? credits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Subject(id: $id, name: $name, teacher: $teacher, credits: $credits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Subject'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('teacher', teacher))
      ..add(DiagnosticsProperty('credits', credits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subject &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.teacher, teacher) &&
            const DeepCollectionEquality().equals(other.credits, credits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(teacher),
      const DeepCollectionEquality().hash(credits));

  @JsonKey(ignore: true)
  @override
  _$SubjectCopyWith<_Subject> get copyWith =>
      __$SubjectCopyWithImpl<_Subject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectToJson(this);
  }
}

abstract class _Subject extends Subject {
  const factory _Subject(
      {int? id, String? name, String? teacher, int? credits}) = _$_Subject;
  const _Subject._() : super._();

  factory _Subject.fromJson(Map<String, dynamic> json) = _$_Subject.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get teacher;
  @override
  int? get credits;
  @override
  @JsonKey(ignore: true)
  _$SubjectCopyWith<_Subject> get copyWith =>
      throw _privateConstructorUsedError;
}
