import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({Key? key, required this.containerContent}) : super(key: key);

  Widget containerContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.83,
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(60.r, 50.r),
            bottomRight: Radius.elliptical(60.r, 50.r),
          ),
          child: Container(
            width: width,
            color: kOffWhite,
            child: SingleChildScrollView(
              child: containerContent,
            ),
          ),
        ),
      ),
    );
  }
}
