import 'package:flutter/material.dart';

class LikeShare extends StatefulWidget {
  const LikeShare({Key? key}) : super(key: key);

  @override
  _LikeShareState createState() => _LikeShareState();
}

class _LikeShareState extends State<LikeShare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Text("likeshare"),
    );
  }
}
