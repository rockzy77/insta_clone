import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/screens/nav_pages/likeshare.dart';
import 'package:insta_clone/screens/nav_pages/userprofile.dart';

import 'nav_pages/home.dart';
import 'nav_pages/search.dart';
import 'nav_pages/viewcont.dart';

class HoldScreen extends StatefulWidget {
  const HoldScreen({Key? key}) : super(key: key);

  @override
  _HoldScreenState createState() => _HoldScreenState();
}

class _HoldScreenState extends State<HoldScreen> {
  bool isHome = true;
  bool isviewCont = false;
  bool isSearch = false;
  bool islikeShare = false;
  bool isuserProfile = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text("Instagram",
                style: GoogleFonts.dancingScript(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.messenger, size: 25),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isHome = true;
                      isviewCont = false;
                      isSearch = false;
                      islikeShare = false;
                      isuserProfile = false;
                    });
                  },
                  icon: Icon(
                    Icons.home,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isHome = false;
                      isviewCont = false;
                      isSearch = true;
                      islikeShare = false;
                      isuserProfile = false;
                    });
                  },
                  icon: Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isHome = false;
                      isviewCont = true;
                      isSearch = false;
                      islikeShare = false;
                      isuserProfile = false;
                    });
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isHome = false;
                      isviewCont = false;
                      isSearch = false;
                      islikeShare = true;
                      isuserProfile = false;
                    });
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isHome = false;
                      isviewCont = false;
                      isSearch = false;
                      islikeShare = false;
                      isuserProfile = true;
                    });
                  },
                  icon: Icon(
                    Icons.circle,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          body: isHome
              ? Home()
              : isSearch
                  ? Search()
                  : islikeShare
                      ? LikeShare()
                      : isviewCont
                          ? ViewCont()
                          : UserProfile()),
    );
  }
}
