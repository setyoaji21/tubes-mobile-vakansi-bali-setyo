import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'destination_request.g.dart';

@JsonSerializable()
class DestinationRequest {
  String? id;
  String? name;
  String? category;
  String? detail;
  int? price;
  String? location;
  String? longitude;
  String? latitude;
  double? rating;

  DestinationRequest({
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

  factory DestinationRequest.fromJson(Map<String, dynamic> json) => _$DestinationRequestFromJson(json);

  Map<String, dynamic> toJson() =>  _$DestinationRequestToJson(this);
}
