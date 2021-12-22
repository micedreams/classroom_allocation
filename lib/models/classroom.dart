import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'classroom.freezed.dart';
part 'classroom.g.dart';

@freezed
class Classroom with _$Classroom {
  const Classroom._(); 
  const factory Classroom({
    int? id,
    String? name,
    String? layout,
    int? size,
    int? subject,
  }) = _Classroom;

  factory Classroom.fromJson(Map<String, dynamic> json) =>
      _$ClassroomFromJson(json);
}
