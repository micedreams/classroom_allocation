import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'registration.freezed.dart';
part 'registration.g.dart';

@freezed
class Registration with _$Registration {
  const Registration._(); 
  const factory Registration({
    int? id,
    int? student,
    int? subject,
  }) = _Registration;

  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);
}
