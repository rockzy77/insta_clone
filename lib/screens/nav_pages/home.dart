import 'package:flutter/material.dart';
import 'package:insta_clone/components/story_header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StoryHeader(),
          Divider(
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
