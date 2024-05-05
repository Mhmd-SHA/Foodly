import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:get/get.dart';

import '../../constants/uidata.dart';
import 'category_page.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kOffWhite,
        elevation: 0,
        title: ReusableText(
            text: "All Categoris",
            style: appStyle(13.sp, kGray, FontWeight.w600)),
        centerTitle: true,
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (index) {
              var category = categories[index];
              return ListTile(
                onTap: () {
                  Get.to(
                    () => CategoryPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Durations.medium1,
                  );
                },
                leading: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: kGrayLight,
                  child: Image.network(
                    category["imageUrl"],
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text(
                  category["title"],
                ),
                trailing: Icon(
                  Fontisto.angle_right,
                  color: kGray,
                  size: 14.r,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
