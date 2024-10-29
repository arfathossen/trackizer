import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String btnText;
  final Color btnTextColor;
  final Color btnColor;

  const CustomButtonWidget({
    super.key,
    required this.onTap,
    required this.btnText,
    required this.btnTextColor,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
      
          minimumSize: const Size(350, 48),
          backgroundColor: btnColor,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
      child: Text(
        btnText,
        style: TextStyle(color: btnTextColor),
      ),
    );
  }
}
