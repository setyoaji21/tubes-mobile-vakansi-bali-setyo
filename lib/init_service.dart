import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'app/services/client_service.dart';

Future<void> initServices() async {
  await Get.putAsync(() async => ClientService(Dio()));
}
