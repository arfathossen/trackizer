import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class DottedLineCirclesWidget extends StatelessWidget {
  const DottedLineCirclesWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        right: 5,
        left: 5,
        bottom: 70,
        child: Container(
          alignment: Alignment.center,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 27,
                    width: 27,
                    decoration: BoxDecoration(
                        color: const Color(0xFF131318),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    // margin: const EdgeInsets.only(bottom: 15),
                    height: 1,
                    width: 290,
                    decoration: DottedDecoration(
                      color: Colors.black,
                      shape: Shape.line,
                      strokeWidth: 2,
                      linePosition: LinePosition.bottom,
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 27,
                    decoration: BoxDecoration(
                        color: const Color(0xFF131318),
                        borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
