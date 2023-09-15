// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StartChatWidget extends StatelessWidget {
  final String title;
  const StartChatWidget({super.key, required this.title});

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
          icon: Icons.person,
          title: "Practice Maths",
          subtitle: "Mentor- Jatin",
          like: "5",
        ),
        cardwidget(
          icon: Icons.person,
          title: "Breathing",
          subtitle: "Mentor -Tanvi",
          like: "24",
        )
      ],
    );
  }
}

class cardwidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String like;
  final IconData icon;
  const cardwidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.like,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey, width: 1.5)),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                child: Icon(
                  icon,
                  size: 25,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(Icons.people_alt_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(like)
                    ],
                  )
                ],
              ),
              subtitle: Text(subtitle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Center(
                          child: Text(
                            "Start Chat",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Center(
                          child: Text(
                            "Video call",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
