import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  // Our primary button widget [to be reused]
  final String? text;

  PrimaryButton({this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xFF76C893),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
          child: Text(this.text!,
              style: TextStyle(
                  fontFamily: "Sofia",
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 18.0)),
        ),
      ),
    );
  }
}
