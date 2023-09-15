import 'package:chat_app/app/modules/video_call_screen.dart/bindings/video_call_screen_dart_binding.dart';
import 'package:chat_app/app/modules/video_call_screen.dart/views/video_call_screen_dart_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'card_widget.dart';

class StartVideoCall extends StatelessWidget {
  final String title;
  const StartVideoCall({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        cardwidget(
          ontap_mymentor: () {
            Get.to(VideoCallScreenDartView());
          },
          ontap_all: () {
            Get.to(VideoCallScreenDartView());
          },
          icon: Icons.person,
          title: "Practice Maths",
          subtitle: "Mentor- Jatin",
          like: "5",
        ),
        cardwidget(
          ontap_mymentor: () {},
          ontap_all: () {},
          icon: Icons.person,
          title: "Breathing",
          subtitle: "Mentor -Tanvi",
          like: "24",
        )
      ],
    );
  }
}
