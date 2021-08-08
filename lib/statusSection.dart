import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  StatusSection({Key? key}) : super(key: key);
  double circleAvatar1BorderRadius = 33;
  double circleAvatar2BorderRadius = 30;
  Widget storyAvatar({required String avatarImage}) {
    return Container(
      padding: EdgeInsets.all(5),
      child: CircleAvatar(
        radius: circleAvatar1BorderRadius,
        backgroundImage: AssetImage("images/storyBackground.jpg"),
        child: CircleAvatar(
          radius: circleAvatar2BorderRadius,
          backgroundImage: AssetImage(avatarImage),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyAvatar(avatarImage: "images/mills.jpeg"),
          storyAvatar(avatarImage: "images/elon.jpg"),
          storyAvatar(avatarImage: "images/finn.jpg"),
          storyAvatar(avatarImage: "images/priyanka.jpg"),
          storyAvatar(avatarImage: "images/robert.jpg"),
          storyAvatar(avatarImage: "images/sadie.jpg"),
          storyAvatar(avatarImage: "images/mills.jpeg"),
          storyAvatar(avatarImage: "images/vin.jpg"),
          storyAvatar(avatarImage: "images/brandi.jpg"),
        ],
      ),
    );
  }
}
