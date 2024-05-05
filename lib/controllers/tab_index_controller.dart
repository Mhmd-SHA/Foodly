import 'package:get/get.dart';

class TabIndexController extends GetxController {
  RxInt _tabIndex = 0.obs;

  int get tabindex => _tabIndex.value;

  set setTabIndex(int tabValue) {
    _tabIndex.value = tabValue;
  }
}
