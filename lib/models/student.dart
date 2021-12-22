import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const Student._(); 
  const factory Student({
    int? id,
    String? name,
    String? email,
    int? age,

  }) = _Student;



  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
}
