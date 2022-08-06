import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class controllonboarding extends GetxController {
  late PageController pageController;
  int curpage = 0;
  pagecontroller(int index) {
    curpage = index;
    update();
  }

  next() {
    curpage++;

    pageController.animateToPage(curpage,
        duration: Duration(milliseconds: 900), curve: Curves.easeInCubic);
  }

  @override
  void onInit() {
    pageController = PageController();
    // TODO: implement onInit
    super.onInit();
  }
}
