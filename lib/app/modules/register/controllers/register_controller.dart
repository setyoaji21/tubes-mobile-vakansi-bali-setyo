import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/register_request.dart';
import '../../../routes/app_pages.dart';
import '../../../services/client_service.dart';

class RegisterController extends GetxController {
  final _service = Get.find<ClientService>();

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final typeController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register() async {
    // validate form
    if (formKey.currentState!.validate()) {
      // prepare register request
      final request = RegisterRequest(
        name: nameController.text,
        type: typeController.text,
        email: emailController.text,
        password: passwordController.text,
        cPassword: confirmPasswordController.text,
      );

      try {
        // send register request
        final response = await _service.register(request);
        // if login success, go to home page
        if (response.success == true) Get.offAllNamed(Routes.HOME);
      } catch (e) {
        // handle error
        // show error message
        Get.rawSnackbar(
          message: 'Failed to register, your email is already registered',
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
