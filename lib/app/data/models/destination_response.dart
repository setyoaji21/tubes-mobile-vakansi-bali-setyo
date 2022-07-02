import 'package:json_annotation/json_annotation.dart';

part 'destination_response.g.dart';

@JsonSerializable()
class DestinationResponse {
  bool? success;
  Data? data;
  String? message;

  DestinationResponse({
    this.success,
    this.data,
    this.message
  });

  factory DestinationResponse.fromJson(Map<String, dynamic> json) => _$DestinationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationResponseToJson(this);
}

@JsonSerializable()
class Data {
  String? id;
  String? name;
  String? category;
  String? detail;
  int? price;
  String? location;
  String? longitude;
  String? latitude;
  double? rating;

  Data({
    this.id,
    this.name,
    this.category,
    this.detail,
    this.price,
    this.location,
    this.longitude,
    this.latitude,
    this.rating
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}