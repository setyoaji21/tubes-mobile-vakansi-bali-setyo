// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      name: json['name'] as String?,
      type: json['type'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      cPassword: json['c_password'] as String?,
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'email': instance.email,
      'password': instance.password,
      'c_password': instance.cPassword,
    };
