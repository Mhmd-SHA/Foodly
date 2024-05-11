import 'package:flutter/material.dart';
import "package:flutter_rating_bar/flutter_rating_bar.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';

class NearbyReastaurantsList extends StatelessWidget {
  const NearbyReastaurantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (index) {
          var restaurant = restaurants[index];
          print(restaurant);
          return Padding(
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            child: InkWell(
              child: SizedBox(
                height: 200.h,
                width: 220.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: Image.network(
                            height: 140.h,
                            width: 220.w,
                            fit: BoxFit.cover,
                            restaurant["imageUrl"].toString(),
                          ),
                        ),
                        Positioned(
                          top: 10.h,
                          right: 10.w,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                border: Border.all(color: kOffWhite, width: 2)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: Image.network(
                                height: 25.h,
                                width: 25.w,
                                fit: BoxFit.cover,
                                restaurant["logoUrl"].toString(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    ReusableText(
                        text: restaurant["title"].toString(),
                        style: appStyle(12.sp, kDark, FontWeight.w500)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: "Delivery Time",
                            style: appStyle(10.sp, kGray, FontWeight.normal)),
                        // Spacer(),
                        ReusableText(
                            text: restaurant["time"].toString(),
                            style: appStyle(10.sp, kDark, FontWeight.normal)),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          unratedColor: kPrimary,
                          itemSize: 10.sp,
                          itemCount: int.parse(restaurant["rating"].toString())
                              .round(),
                          itemBuilder: (BuildContext context, int index) {
                            return Icon(FontAwesome.star);
                          },
                        ),
                        SizedBox(width: 10.w),
                        ReusableText(
                            text:
                                "+ ${restaurant["ratingCount"]} reviews and ratings  ",
                            style: appStyle(9.sp, kGray, FontWeight.normal))
                      ],
                    )
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
