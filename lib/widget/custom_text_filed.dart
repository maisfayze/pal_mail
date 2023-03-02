import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hintText,
    this.obsecure = false,
  });
  final String hintText;
  final bool obsecure;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          //<-- SEE HERE
          borderSide: BorderSide(
            width: 1.w,
            color: Color(0xffEAEAF5),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xff003AFC),
        )),
        hoverColor: Color(0xff003AFC),
        hintStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          color: Color(0xffB2B2B2),
        ),
      ),
    );
  }
}
