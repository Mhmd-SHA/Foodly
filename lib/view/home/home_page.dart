import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_appbar.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/common/heading.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/view/home/recommendation_page.dart';
import 'package:foodly/view/home/widgets/category_list.dart';
import 'package:foodly/view/home/widgets/food_list.dart';
import 'package:foodly/view/home/widgets/nearby_reastaurants_list.dart';
import 'package:get/get.dart';

import 'allnearby_restaurants_page.dart';
import 'fastest_food_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h), child: CustomAppbar()),
      body: SafeArea(
        child: CustomContainer(
            containerContent: Column(
          children: [
            CategoryList(),
            Heading(
              headingText: "Nearby Restaurants",
              onTap: () {
                Get.to(() => AllnearbyRestaurantsPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Durations.medium1);
              },
            ),
            NearbyReastaurantsList(),
            Heading(
              headingText: "Try Something New",
              onTap: () {
                Get.to(() => RecommendationPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Durations.medium1);
              },
            ),
            FoodList(),
            Heading(
              headingText: "Fastest Food Close to You",
              onTap: () {
                Get.to(() => FastestFoodPage(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Durations.medium1);
              },
            ),
            FoodList(),
          ],
        )),
      ),
    );
  }
}
