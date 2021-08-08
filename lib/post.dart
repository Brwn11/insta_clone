import 'dart:io';

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String postImage;
  final String postName;
  final String likes;
  final String comment;
  final String likedByText;
  final String avatarImage;
  const Post({
    Key? key,
    required this.postImage,
    required this.postName,
    required this.likes,
    required this.comment,
    required this.likedByText,
    required this.avatarImage,
  }) : super(key: key);
  final String mainFont = "Main Font";
  final double fontSize = 13;
  Widget postAvatar({required avatarImage}) {
    return Container(
      padding: EdgeInsets.all(6),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("images/storyBackground.jpg"),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(
            avatarImage,
          ),
        ),
      ),
    );
  }

  Widget postNames({required postName}) {
    return Text(
      postName,
      style: TextStyle(
        fontFamily: mainFont,
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }

  Widget postHeader({required postName}) {
    return Row(
      children: [
        postAvatar(avatarImage: avatarImage),
        postNames(postName: postName),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: () {
            ;
          },
        ),
      ],
    );
  }

  Widget postImages({context, required String image}) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget postFooterIcons() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            ;
          },
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            ;
          },
          icon: Icon(
            Icons.chat_outlined,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            ;
          },
          icon: Icon(
            Icons.share,
            color: Colors.white,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            ;
          },
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget sizedBox() {
    return SizedBox(
      width: 10,
    );
  }

  Widget postFooterLikeText({required likes}) {
    return Row(
      children: [
        sizedBox(),
        Text(
          likes,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: mainFont,
          ),
        ),
        Spacer(),
      ],
    );
  }

  Widget postFooterMainText({required comment, required likedByText}) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            sizedBox(),
            Text(
              likedByText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            sizedBox(),
            Text(
              "View all $comment comments",
              style: TextStyle(
                fontFamily: mainFont,
                fontSize: fontSize,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postHeader(postName: postName),
          postImages(context: context, image: postImage),
          postFooterIcons(),
          postFooterLikeText(likes: likes),
          postFooterMainText(comment: comment, likedByText: likedByText),
        ],
      ),
    );
  }
}
