import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        width: width,
        height: 60.h,
        color: kOffWhite,
        child: Container(
          margin: EdgeInsets.only(top: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 21.r,
                    backgroundColor: kSecondary,
                    backgroundImage: NetworkImage(
                        "https://static.wikia.nocookie.net/fdk/images/f/f2/IMG_Jack.png/revision/latest?cb=20180311163141&path-prefix=de"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 6.h,
                      left: 12.w,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          text: "Deliver to  ",
                          style: appStyle(
                            15,
                            kSecondary,
                            FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.65,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "16645 21st ave N plymouth MN",
                            style: appStyle(12, kGrayLight, FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                getTime(),
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }

  String getTime() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 5 && hour < 7) {
      return " 🌅 ";
    } else if (hour >= 7 && hour < 12) {
      return " 🌤️";
    } else if (hour >= 12 && hour < 16) {
      return " ☀ ";
    } else if (hour >= 16 && hour < 19) {
      return " 🌇 ";
    } else if (hour >= 19 && hour < 11) {
      return " 🌃 ";
    } else if (hour >= 11 && hour < 1) {
      return " 🌙 ";
    }
    return " 🌠 ";
  }
}
