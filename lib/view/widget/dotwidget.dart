import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:notpaad/controll/controller.dart';
import 'package:notpaad/source/datasource.dart';

class dottwidget extends GetView<controllonboarding> {
  const dottwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<controllonboarding>(builder: ((controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onboardlist.length,
              (index) => AnimatedContainer(
                  margin: EdgeInsets.only(left: 10),
                  duration: Duration(milliseconds: 900),
                  width: controller.curpage == index ? 20 : 5,
                  height: 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue)))
        ],
      );
    }));
  }
}
