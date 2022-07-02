// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationResponse _$DestinationResponseFromJson(Map<String, dynamic> json) =>
    DestinationResponse(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DestinationResponseToJson(
        DestinationResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
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

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
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
