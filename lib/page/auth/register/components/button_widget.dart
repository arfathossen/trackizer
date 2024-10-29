import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String images, title;
  final Color textColor;
  final Color bgColor;
  const ButtonWidget(
      {super.key,
      required this.images,
      required this.title,
      required this.textColor,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48.0,
        color: Colors.transparent,
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 1.0),
                color: bgColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    images,
                    height: 16,
                    width: 16,
                  ),
                ),
                const SizedBox(width: 10.0),
                Center(
                  child: Text(title,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat')),
                )
              ],
            )));
  }
}
