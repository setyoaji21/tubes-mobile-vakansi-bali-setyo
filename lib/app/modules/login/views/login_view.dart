import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../view/components/basic_button.dart';
import '../../../view/components/basic_text_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: controller.formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      Image.asset('assets/images/tree.png'),
                      const Text(
                        'Vakansi Bali',
                        style: TextStyle(
                          fontFamily: 'Gaegu',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Nikmati liburanmu bersama kami!',
                        style: TextStyle(
                          fontFamily: 'Lexend_Deca',
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 24),
                      BasicTextField(
                        hintText: 'Email',
                        controller: controller.emailController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Email is required'),
                          EmailValidator(
                              errorText: 'Email should be valid format')
                        ]),
                      ),
                      const SizedBox(height: 16),
                      BasicTextField(
                        hintText: 'Password',
                        obscureText: true,
                        controller: controller.passwordController,
                        validator: RequiredValidator(
                            errorText: 'Password is required'),
                      ),
                      const SizedBox(height: 24),
                      BasicButton(
                        text: 'Login',
                        onPressed: controller.login,
                      ),
                      const SizedBox(height: 24),
                      _buildRegister(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'New Account?',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () => Get.offAndToNamed(Routes.REGISTER),
          child: const Text(
            'Register',
            style: TextStyle(
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
