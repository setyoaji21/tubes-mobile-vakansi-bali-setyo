import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class BasicButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const BasicButton({
    Key? key,
    this.onPressed,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(AppColors.button),
        ),
      ),
    );
  }
}
