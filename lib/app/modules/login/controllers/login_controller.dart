import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/login_request.dart';
import '../../../routes/app_pages.dart';
import '../../../services/client_service.dart';

class LoginController extends GetxController {
  final _service = Get.find<ClientService>();

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    // validate form
    if (formKey.currentState!.validate()) {
      // prepare login request
      final request = LoginRequest(
        email: emailController.text,
        password: passwordController.text,
      );

      try {
        // send login request
        final response = await _service.login(request);
        // if login success, go to home page
        if (response.success == true) Get.offAllNamed(Routes.HOME);
      } catch (e) {
        // handle error
        // show error message
        Get.rawSnackbar(
          message: 'Failed to login, please check your email and password',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          borderColor: Colors.red,
          borderWidth: 2,
        );
      }
    }
  }
}
