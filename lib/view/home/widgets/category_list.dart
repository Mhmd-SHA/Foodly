import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/controllers/category_controller.dart';
import 'package:get/get.dart';

import '../../category/all_categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 10.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          var category = categories[index];
          return GestureDetector(
            onTap: () {
              if (controller.categoryValue == category["_id"]) {
                controller.updateCategory = "";
                controller.updateTitle = "";
              } else if (category["value"] == "more") {
                controller.updateCategory = "";
                controller.updateTitle = "";
                Get.to(
                  () => const AllCategories(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Durations.medium1,
                );
              } else {
                controller.updateCategory = category["_id"];
                controller.updateTitle = category["title"];
              }
            },
            child: Obx(
              () => Container(
                margin: EdgeInsets.only(right: 5.w),
                padding: EdgeInsets.only(top: 5.h),
                width: width * 0.19,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: controller.categoryValue == category["_id"]
                        ? kSecondary
                        : kOffWhite,
                    width: 2.w,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Image.network(
                        category["imageUrl"],
                        fit: BoxFit.contain,
                      ),
                    ),
                    ReusableText(
                        text: category["title"],
                        style: appStyle(12, kDark, FontWeight.normal))
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
