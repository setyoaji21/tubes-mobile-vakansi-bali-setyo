import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  String? name;
  String? type;
  String? email;
  String? password;
  @JsonKey(name: 'c_password')
  String? cPassword;

  RegisterRequest({
    this.name,
    this.type,
    this.email,
    this.password,
    this.cPassword,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
