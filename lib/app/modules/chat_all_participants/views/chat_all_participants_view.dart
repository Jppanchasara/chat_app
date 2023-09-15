// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:chat_app/widget/chatscreen_bottomnavbar.dart';
import 'package:chat_app/widget/message_widget.dart';
import 'package:chat_app/widget/textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_all_participants_controller.dart';

class ChatAllParticipantsView extends GetView<ChatAllParticipantsController> {
  const ChatAllParticipantsView({Key? key}) : super(key: key);
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
            child: ListView(
                physics: BouncingScrollPhysics(),
                reverse: true,
                children: [
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
                        MessageShowWidget(
                          messageImage: "",
                          ImageUrl: "",
                          name: "Alice Hadson",
                          message:
                              "I finished my today's activity. Instead of 10 problems,I was able to complete 14,I feel so happy.",
                          messagetime: "3:05 PM",
                          usersendmessage: false,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black54),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Jun 25",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        MessageShowWidget(
                          messageImage: "",
                          ImageUrl: "",
                          name: "Aethur Hunt",
                          message:
                              "Hey, can anyone send me solution of the 4th problem?",
                          messagetime: "3:07 PM",
                          usersendmessage: false,
                        ),
                        MessageShowWidget(
                          messageImage:
                              "https://images.pexels.com/photos/5797899/pexels-photo-5797899.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ImageUrl: "",
                          name: "Jayesh Panchasra",
                          message:
                              "Hey, can anyone send me solution of the 4th problem?",
                          messagetime: "3:07 PM",
                          usersendmessage: true,
                        ),
                        MessageShowWidget(
                          messageImage: "",
                          ImageUrl: "",
                          name: "Jayesh Panchasra",
                          message: "Refer this",
                          messagetime: "3:07 PM",
                          usersendmessage: true,
                        ),
                        MessageShowWidget(
                          messageImage: "",
                          ImageUrl: "",
                          name: "Aethur Hunt",
                          message: "Thanks john.",
                          messagetime: "3:07 PM",
                          usersendmessage: false,
                        ),
                        MessageShowWidget(
                          messageImage: "",
                          ImageUrl: "",
                          name: "Robin ashely *Menor",
                          message: "That's great John. Keep it up.",
                          messagetime: "3:07 PM",
                          usersendmessage: false,
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

AppBarWidget(VoidCallback ontap) {
  return Column(
    children: [
      Align(
        alignment: Alignment.center,
        child: TextButton(
            onPressed: () {},
            child: Text("Choose different place for video call")),
      ),
      Container(
        height: 24,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Practice Maths",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
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
