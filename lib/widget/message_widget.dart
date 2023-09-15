// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class MessageShowWidget extends StatelessWidget {
  final String ImageUrl;
  final String name;
  final String message;
  final String messagetime;
  final String messageImage;
  final bool usersendmessage;
  const MessageShowWidget(
      {super.key,
      required this.ImageUrl,
      required this.name,
      required this.message,
      required this.messagetime,
      required this.usersendmessage,
      required this.messageImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: usersendmessage
          ? Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.all(12),
                width: messageImage.isNotEmpty
                    ? Get.width * 0.35
                    : Get.width * 0.70,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    messageImage.isNotEmpty
                        ? Image.network(
                            messageImage,
                            height: Get.width * 0.35,
                            width: Get.width * 0.28,
                            fit: BoxFit.cover,
                          )
                        : Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              message,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        messagetime,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )
          : Container(
              width: Get.width / 1.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey.shade400,
                    child: ImageUrl.isNotEmpty
                        ? Image.network(ImageUrl)
                        : Text(
                            "A",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        width: Get.width / 1.7,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(message),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                messagetime,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
    );
  }
}
