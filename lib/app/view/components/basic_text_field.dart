import 'package:flutter/material.dart';

import '../../constants/app_form_style.dart';

class BasicTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;

  const BasicTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.validator,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(20),
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: AppFormStyle.focusedBorder,
        enabledBorder: AppFormStyle.enabledBorder,
        errorBorder: AppFormStyle.errorBorder,
        focusedErrorBorder: AppFormStyle.focusedErrorBorder,
        focusColor: Colors.white,
      ),
    );
  }
}
