import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class DottedLineCirclesWidget extends StatelessWidget {
  const DottedLineCirclesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SizedBox(
          height: 27,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                    color: const Color(0xFF131318),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Expanded(
                child: Container(
                  // margin: const EdgeInsets.only(bottom: 15),
                  height: 1,

                  decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.line,
                    strokeWidth: 2,
                    linePosition: LinePosition.bottom,
                  ),
                ),
              ),
              Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                    color: const Color(0xFF131318),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
