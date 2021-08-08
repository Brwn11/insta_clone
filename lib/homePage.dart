import 'package:flutter/material.dart';
import 'package:insta_clone/post.dart';
import 'package:insta_clone/statusSection.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  double fontSize = 40;
  String fontFamily = "Title Font";
  Icon firstActionIcon = Icon(Icons.add);
  Icon secondActionIcon = Icon(Icons.messenger_outline_rounded);
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
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
            fontFamily: fontFamily,
            fontSize: fontSize,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ;
            },
            icon: firstActionIcon,
          ),
          IconButton(
            onPressed: () {
              ;
            },
            icon: secondActionIcon,
          ),
        ],
      ),
      body: Container(
        height: 1000,
        decoration: BoxDecoration(color: Colors.black),
        child: ListView(
          children: [
            StatusSection(),
            Divider(
              color: Colors.grey,
            ),
            Post(
              avatarImage: "images/mills.jpeg",
              postName: "milliebobbybrown",
              postImage: "images/millsPost.jpeg",
              likes: "80,000 likes",
              comment: "189,000",
              likedByText: "Liked By Noah Schnapp and 80,000 others",
            ),
            Post(
              avatarImage: "images/elon.jpg",
              postName: "elonmusk",
              postImage: "images/elonPost.jpg",
              likes: "10,000 likes",
              comment: "189,000",
              likedByText: "Liked By Richard Branson and 10,000 others",
            ),
            Post(
              avatarImage: "images/finn.jpg",
              postName: "finnwolfhard",
              postImage: "images/finnPost.jpg",
              likes: "40,000 likes",
              comment: "3,000",
              likedByText: "Liked By Ricardo and 40,000 others",
            ),
            Post(
              avatarImage: "images/noah.jpeg",
              postName: "noahschnapp",
              postImage: "images/noahPost.png",
              likes: "60,000 likes",
              comment: "7,000",
              likedByText: "Liked By millibobbybrown and 60,000 others",
            ),
            Post(
              avatarImage: "images/brandi.jpg",
              postName: "brandilove",
              postImage: "images/brandiPost.jpg",
              likes: "4,000 likes",
              comment: "3,000",
              likedByText: "Liked By KaliRose and 4,000 others",
            ),
            Post(
              avatarImage: "images/paul.jpg",
              postName: "paulwalker",
              postImage: "images/paulPost.jpg",
              likes: "90,000 likes",
              comment: "9,000",
              likedByText: "Liked By VinDiesel and 90,000 others",
            ),
            Post(
              avatarImage: "images/priyanka.jpg",
              postName: "priyankachopra",
              postImage: "images/priyankaPost.jpg",
              likes: "50,000 likes",
              comment: "7,000",
              likedByText: "Liked By Dwane and 50,000 others",
            ),
            Post(
              avatarImage: "images/robert.jpg",
              postName: "robertdowney",
              postImage: "images/robertPost.jpg",
              likes: "80,000 likes",
              comment: "8,000",
              likedByText: "Liked By Sharique Samsudeen and 80,000 others",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: currentPage == 0 ? Colors.red : Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: currentPage == 1 ? Colors.red : Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              icon: Icon(
                Icons.ondemand_video_rounded,
                color: currentPage == 2 ? Colors.red : Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: Icon(
                Icons.card_travel_rounded,
                color: currentPage == 3 ? Colors.red : Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: Icon(
                Icons.person,
                color: currentPage == 4 ? Colors.red : Colors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
