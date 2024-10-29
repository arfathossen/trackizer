



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class CardNumberFieldWidget extends StatelessWidget {
  const CardNumberFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 24,
              width: 45,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 4) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(4),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onSaved: (pin1) {},
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle:
                      TextStyle(color: Constants.secondaryColor),
                  hintText: '****',
                ),
              ),
            ),
          ),
          Container(
            height: 24,
            width: 45,
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 4) {
                  FocusScope.of(context).nextFocus();
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
                FilteringTextInputFormatter.digitsOnly,
              ],
              onSaved: (pin2) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:
                    TextStyle(color: Constants.secondaryColor),
                hintText: '****',
              ),
            ),
          ),
          Container(
            height: 24,
            width: 45,
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 4) {
                  FocusScope.of(context).nextFocus();
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
                FilteringTextInputFormatter.digitsOnly,
              ],
              onSaved: (pin3) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:
                    TextStyle(color: Constants.secondaryColor),
                hintText: '****',
              ),
            ),
          ),
          Container(
            height: 24,
            width: 45,
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 4) {
                  FocusScope.of(context).nextFocus();
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
                FilteringTextInputFormatter.digitsOnly,
              ],
              onSaved: (pin4) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle:
                    TextStyle(color: Constants.secondaryColor),
                hintText: '2197',
              ),
            ),
          )
        ],
      ),
    );
  }
}
