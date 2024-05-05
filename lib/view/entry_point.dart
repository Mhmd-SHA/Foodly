import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/controllers/tab_index_controller.dart';
import 'package:foodly/view/cart/cart_page.dart';
import 'package:foodly/view/home/home_page.dart';
import 'package:foodly/view/profile/profile_page.dart';
import 'package:foodly/view/search/search_page.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<Widget> pageList = [HomePage(), SearchPage(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              Container(
                height: height,
                child: pageList[controller.tabindex],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                      onTap: (value) {
                        print(value);
                        controller.setTabIndex = value;
                      },
                      currentIndex: controller.tabindex,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme: IconThemeData(color: Colors.black38),
                      selectedIconTheme: IconThemeData(color: kSecondary),
                      items: [
                        BottomNavigationBarItem(
                            icon: controller.tabindex == 0
                                ? Icon(AntDesign.appstore1)
                                : Icon(AntDesign.appstore1),
                            label: "Home"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search), label: "Search"),
                        BottomNavigationBarItem(
                            icon: Badge(
                                isLabelVisible: true,
                                label: Text("0"),
                                child: Icon(FontAwesome.shopping_cart)),
                            label: "Cart"),
                        BottomNavigationBarItem(
                            icon: controller.tabindex == 3
                                ? Icon(FontAwesome.user_circle_o)
                                : Icon(FontAwesome.user_circle),
                            label: "Profile"),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
