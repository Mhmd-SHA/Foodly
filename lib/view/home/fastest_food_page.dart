import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class FastestFoodPage extends StatelessWidget {
  const FastestFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(
          text: "Fastest Foods",
          style: appStyle(13.sp, kGray, FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: kOffWhite,
      ),
    );
  }
}
