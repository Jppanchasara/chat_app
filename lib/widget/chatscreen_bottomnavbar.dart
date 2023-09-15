// ignore_for_file: prefer_const_constructors

import 'package:chat_app/widget/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatScreenNavBar extends StatelessWidget {
  const ChatScreenNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Divider(),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("type your message..."))),
                      )),
                ),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.send)),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.mic)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
