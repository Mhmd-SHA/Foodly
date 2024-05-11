import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/background_container.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';

import 'widgets/nearby_reastaurants_list.dart';

class AllnearbyRestaurantsPage extends StatelessWidget {
  const AllnearbyRestaurantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(
          text: "Nearby Resataurents",
          style: appStyle(13.sp, kGray, FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: kOffWhite,
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        child: ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            var restaurant = restaurants[index];
            return Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8.h, left: 10.w, right: 10.w),
                  width: width,
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: kOffWhite,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Container(
                    padding: EdgeInsets.all(5.r),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: 70.w,
                                height: 70.w,
                                child: Image.network(
                                  fit: BoxFit.cover,
                                  restaurant["imageUrl"].toString(),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 6.w, bottom: 2.h),
                                  height: 16.h,
                                  width: width,
                                  child: RatingBarIndicator(
                                    // unratedColor: kPrimary,
                                    rating: 5,
                                    itemSize: 10.sp,
                                    itemCount: 5,
                                    itemBuilder: (context, index) => Icon(
                                      FontAwesome.star,
                                      color: kSecondary,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              text: restaurant['title'].toString(),
                              style: appStyle(11.sp, kDark, FontWeight.w400),
                            ),
                            ReusableText(
                              text:
                                  "Delivery Time ${restaurant['time'].toString()}",
                              style: appStyle(11.sp, kGray, FontWeight.w400),
                            ),
                            ReusableText(
                              text:
                                  "Delivery Time ${restaurant['time'].toString()}",
                              style: appStyle(11.sp, kGray, FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
