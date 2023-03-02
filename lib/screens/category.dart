import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail/utils/constant.dart';

import '../widget/custom_header.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);
  static const id = 'Category';

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            CustomHeader(
              leading: 'cancel',
              action: 'Done',
              title: 'Category',
            ),
            SizedBox(
              height: 56.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.r)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CheckboxListTile(
                          title: Text("title text"),
                          value: checkedValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        )
                        Text(
                          'Official organization',
                          style: GoogleFonts.poppins(
                            fontSize: 18.0.sp,
                          ),
                        ),
                        Icon(
                          Icons.check,
                          color: Constant.seconderyColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Divider(
                      thickness: .3,
                      color: Constant.subTitleColor,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'NGOs',
                      style: GoogleFonts.poppins(
                        fontSize: 18.0.sp,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Divider(
                      thickness: .3,
                      color: Constant.subTitleColor,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'UnBorder',
                      style: GoogleFonts.poppins(
                        fontSize: 18.0.sp,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Divider(
                      thickness: .3,
                      color: Constant.subTitleColor,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'Others',
                      style: GoogleFonts.poppins(
                        fontSize: 18.0.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
