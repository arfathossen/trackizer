import 'package:flutter/material.dart';

class ForgotPasswoedWidget extends StatefulWidget {
  const ForgotPasswoedWidget({super.key});

  @override
  State<ForgotPasswoedWidget> createState() => _ForgotPasswoedWidgetState();
}

class _ForgotPasswoedWidgetState extends State<ForgotPasswoedWidget> {
  bool rememberUser = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 1.1,
              child: Checkbox(
                  side: const BorderSide(color: Colors.white30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  value: rememberUser,
                  onChanged: (value) {
                    setState(() {
                      rememberUser = value!;
                    });
                  }),
            ),
            const Text(
              "Remember me",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: const Text(
            "Forgot passoword",
            style: TextStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
