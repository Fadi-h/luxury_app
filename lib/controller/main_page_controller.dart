import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController{

  RxInt selectedIndex = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  List<String> iconList = ['home', 'shop','services','cart','account'];

  changeIndexOfBottomBar(index){
    selectedIndex.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn);
  }

}