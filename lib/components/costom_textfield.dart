import 'package:flutter/material.dart';

class CostomTextfield extends StatelessWidget {
  final bool obscureText;
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  const CostomTextfield(
      {super.key,
      required this.obscureText,
      this.controller,
      this.keyboardType,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white38),
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              style: const TextStyle(color: Color(0xFFA1A4B2), fontSize: 16),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color(0xFFA1A4B2),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
