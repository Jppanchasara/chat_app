// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app/widget/start_chat.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/connect_controller.dart';
import 'package:badges/badges.dart' as badges;

class ConnectView extends GetView<ConnectController> {
  const ConnectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ConnectController connectController = Get.put(ConnectController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: badges.Badge(
            badgeContent: Text("3"),
            child: Icon(Icons.notifications),
          ),
          title: Text(
            "Connect",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          leading: Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Image.asset(
              "assets/icon.png",
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Text(
                'You do not have any converations yet.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Showbottomsheetwidget(context);
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Start Chat",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Showbottomsheetwidget(context);
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Video call",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Showbottomsheetwidget(context) {
    final scheduleWidgets = [
      StartChatWidget(
        title: "Start a chat with",
      ),
      StartChatWidget(
        title: "Start vide call with",
      )
    ];
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      context: context,
      builder: (context) {
        return Container(
          height: Get.height * 0.8,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Start Conversation",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Positioned(
                        child: Icon(
                      Icons.close,
                      size: 21,
                    ))
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.changebuttonvalue(0);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: controller.buttonIndex.value == 0
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Text(
                                      "UpComing",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changebuttonvalue(1);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 15),
                                  decoration: BoxDecoration(
                                      color: controller.buttonIndex.value == 1
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Text(
                                      "UpComing",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Obx(() => scheduleWidgets[controller.buttonIndex.value])
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
