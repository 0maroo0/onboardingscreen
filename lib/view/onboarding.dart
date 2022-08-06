import 'package:flutter/material.dart';
import 'package:notpaad/controll/controller.dart';
import 'package:notpaad/source/datasource.dart';
import 'package:notpaad/view/widget/dotwidget.dart';
import 'package:get/get.dart';

class onboard extends GetView<controllonboarding> {
  const onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(controllonboarding());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: [
          Expanded(
            child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.pagecontroller(value);
                },
                itemCount: onboardlist.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Text(
                        "${onboardlist[i].title}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Image.network("${onboardlist[i].image}"),
                      const Spacer(
                        flex: 2,
                      ),
                      Text(
                        "${onboardlist[i].body}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      const dottwidget(),
                      const Spacer(
                        flex: 3,
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.next();
                        },
                        child: Text("next"),
                        color: Colors.blue,
                        minWidth: 250,
                        height: 40,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                    ],
                  );
                }),
          )
        ])));
  }
}
