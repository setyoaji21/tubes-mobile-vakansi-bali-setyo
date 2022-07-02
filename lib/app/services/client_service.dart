import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/models/login_request.dart';
import '../data/models/login_response.dart';
import '../data/models/register_request.dart';
import '../data/models/register_response.dart';
import '../data/models/destination_request.dart';
import '../data/models/destination_response.dart';

part 'client_service.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:8000/api')
abstract class ClientService {
  factory ClientService(Dio dio, {String? baseUrl}) =>
      _ClientService(dio, baseUrl: baseUrl);

  @POST('/register')
  Future<RegisterResponse> register(@Body() RegisterRequest request);

  @POST('/login')
  Future<LoginResponse> login(@Body() LoginRequest request);

  @GET('/destinations')
  Future<DestinationResponse> destination(@Header("Authorization") String token);
}
