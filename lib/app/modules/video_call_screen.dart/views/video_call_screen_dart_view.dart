// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../controllers/video_call_screen_dart_controller.dart';

class VideoCallScreenDartView extends GetView<VideoCallScreenDartController> {
  const VideoCallScreenDartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidgetvideocall(context),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                videocallphotoswidget(
                    image:
                        "https://images.pexels.com/photos/4064235/pexels-photo-4064235.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    title: "Tobobekov"),
                videocallphotoswidget(
                    image:
                        "https://images.pexels.com/photos/5543385/pexels-photo-5543385.jpeg",
                    title: "Rohan")
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                videocallphotoswidget(
                    image:
                        "https://images.pexels.com/photos/5490235/pexels-photo-5490235.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    title: "Jayesh"),
                videocallphotoswidget(
                  image:
                      "https://images.pexels.com/photos/4240503/pexels-photo-4240503.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  title: "Dhara",
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomnavbar(),
    );
  }

  bottomnavbar() {
    return Container(
        height: 60,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonwidget(
                icon: Icons.mic,
                title: "Mute",
              ),
              buttonwidget(
                icon: Icons.video_call,
                title: "Stop Video",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: Center(
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.phone,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              buttonwidget(
                icon: Icons.ios_share_sharp,
                title: "ShareConnect",
              ),
              buttonwidget(
                icon: Icons.people,
                title: "participent",
              )
            ],
          ),
        ));
  }

  AppBarWidgetvideocall(context) {
    return Container(
      height: MediaQuery.of(context).padding.top + 50,
      color: Colors.black,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 12,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Weekly Yoga",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                top: 0,
                left: 12,
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.speaker_2_fill,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.cameraswitch_outlined,
                      color: Colors.white,
                      size: 22,
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 12,
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class videocallphotoswidget extends StatelessWidget {
  final String image;
  final String title;
  const videocallphotoswidget({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: Get.width / 2,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("${image}"), fit: BoxFit.cover)),
      ),
      Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            )),
          ))
    ]);
  }
}

class buttonwidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const buttonwidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 50,
        width: 70,
        child: Column(
          children: [
            Icon(
              icon,
              size: 25,
              color: Colors.white,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
