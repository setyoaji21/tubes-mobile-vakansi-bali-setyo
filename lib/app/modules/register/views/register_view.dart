import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../view/components/basic_button.dart';
import '../../../view/components/basic_text_field.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

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
                      const SizedBox(height: 40),
                      const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40),
                      BasicTextField(
                        hintText: 'Name',
                        controller: controller.nameController,
                        validator:
                            RequiredValidator(errorText: 'Name is required'),
                      ),
                      const SizedBox(height: 16),
                      BasicTextField(
                        hintText: 'Type',
                        controller: controller.typeController,
                        validator:
                            RequiredValidator(errorText: 'Type is required'),
                      ),
                      const SizedBox(height: 16),
                      BasicTextField(
                        hintText: 'Email',
                        controller: controller.emailController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Email is required'),
                          EmailValidator(
                              errorText: 'Email should be valid format'),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      BasicTextField(
                        hintText: 'Password',
                        obscureText: true,
                        controller: controller.passwordController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Password is required'),
                          MinLengthValidator(
                            6,
                            errorText:
                                'Password should be at least 6 characters',
                          ),
                        ]),
                      ),
                      const SizedBox(height: 16),
                      BasicTextField(
                        hintText: 'Confirm Password',
                        obscureText: true,
                        controller: controller.confirmPasswordController,
                        validator: (val) =>
                            MatchValidator(errorText: 'passwords do not match')
                                .validateMatch(
                                    val!, controller.passwordController.text),
                      ),
                      const SizedBox(height: 40),
                      BasicButton(
                        text: 'Register',
                        onPressed: controller.register,
                      ),
                      const SizedBox(height: 40),
                      _buildLogin(),
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

  Widget _buildLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () => Get.offAndToNamed(Routes.LOGIN),
          child: const Text(
            'Login',
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
