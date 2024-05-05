import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../generated/assets.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(
      {Key? key, required this.child, required this.color})
      : super(key: key);
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(
            image: AssetImage(Assets.imagesRestaurantBk),
            fit: BoxFit.cover,
            opacity: 0.7),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: child,
    );
  }
}
