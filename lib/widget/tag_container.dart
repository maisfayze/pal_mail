import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TagContainer extends StatelessWidget {
  const TagContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffE6E6E6), borderRadius: BorderRadius.circular(25.r)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$text',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: Color(0xff7C7C7C)),
        ),
      ),
    );
  }
}
