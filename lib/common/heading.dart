import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.headingText, this.onTap})
      : super(key: key);

  final String headingText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: ReusableText(
                text: headingText, style: appStyle(16, kDark, FontWeight.bold)),
          ),
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Icon(
                AntDesign.appstore1,
                size: 20.sp,
                color: kSecondary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
