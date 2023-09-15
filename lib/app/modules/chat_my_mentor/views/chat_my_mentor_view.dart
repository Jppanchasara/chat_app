// ignore_for_file: prefer_const_constructors

import 'package:chat_app/widget/message_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widget/chatscreen_bottomnavbar.dart';
import '../controllers/chat_my_mentor_controller.dart';

class ChatMyMentorView extends GetView<ChatMyMentorController> {
  const ChatMyMentorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          AppBarWidget(() {
            Navigator.pop(context);
          }),
          Expanded(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black54),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Jun 24",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    MessageShowWidget(
                      messageImage: "",
                      ImageUrl: "",
                      name: "Jayesh Panchasra",
                      message:
                          "Hi, Robims. I am struggling with the second question.can you please help me with that?",
                      messagetime: "4:10 PM",
                      usersendmessage: true,
                    ),
                    RecivemesageWidget(
                      message:
                          "Hey, can anyone send me solution of the 4th problem?",
                      messagetime: "4:12 PM",
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: ChatScreenNavBar(),
    );
  }
}

RecivemesageWidget({required String message, required String messagetime}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.all(12),
      width: Get.width * 0.70,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              message,
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              messagetime,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          )
        ],
      ),
    ),
  );
}

AppBarWidget(VoidCallback ontap) {
  return Column(
    children: [
      Container(
        height: 45,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Robin Ashley",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Practice Maths",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              left: 12,
              child: InkWell(
                onTap: ontap,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              right: 12,
              top: 15,
              child: Row(
                children: [
                  Icon(
                    Icons.video_call,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 12,
                      child: Text(
                        "i",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Divider()
    ],
  );
}
