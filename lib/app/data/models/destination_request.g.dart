// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationRequest _$DestinationRequestFromJson(Map<String, dynamic> json) =>
    DestinationRequest(
      id: json['id'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      detail: json['detail'] as String?,
      price: json['price'] as int?,
      location: json['location'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DestinationRequestToJson(DestinationRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'detail': instance.detail,
      'price': instance.price,
      'location': instance.location,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'rating': instance.rating,
    };
