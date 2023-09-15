import 'package:chat_app/app/modules/connect/views/connect_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var page = [
      Center(child: Text("Golas")),
      Center(child: Text("jaurney")),
      Center(child: Text("Add")),
      ConnectView(),
      Center(child: Text("Performance"))
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Obx(() => page[controller.tabIndex.value]),
        bottomNavigationBar: Obx(
          () => SizedBox(
            height: 80,
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.golf_course_sharp),
                  label: 'Golas',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_rounded),
                  label: 'Jaurney',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      size: 50,
                      color: Colors.black,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                  icon: Icon(Icons.perm_phone_msg_rounded),
                  label: 'Connect',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  label: 'Performance',
                ),
              ],
              currentIndex: controller.tabIndex.value,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              selectedItemColor: Colors.red,
              onTap: (index) {
                controller.changeTabIndex(index);
              },
            ),
          ),
        ));
  }
}
