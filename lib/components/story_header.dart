import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryHeader extends StatefulWidget {
  const StoryHeader({Key? key}) : super(key: key);

  @override
  _StoryHeaderState createState() => _StoryHeaderState();
}

class _StoryHeaderState extends State<StoryHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Colors.white,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          children: [
            YourStory(),
            OtherStory(
              uid: 'mikey_spa',
            ),
            OtherStory(
              uid: 'mikey_spa',
            ),
            OtherStory(
              uid: 'mikey_spaa',
            ),
            OtherStory(
              uid: 'mikey_spa',
            ),
            OtherStory(
              uid: 'mikey_spa',
            ),
            OtherStory(
              uid: 'mikey_spa',
            ),
            OtherStory(
              uid: 'mikey_spa',
            ),
            OtherStory(
              uid: 'mikey_spa',
            ),
          ],
        ),
      ]),
    );
  }
}

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange, width: 2)),
              margin: EdgeInsets.only(top: 18, left: 10, bottom: 2, right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 30,
              ),
            ),
            Positioned(
              bottom: 7,
              right: 9,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.blue,
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  size: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Text(
          'Your Story',
          style: GoogleFonts.poppins(fontSize: 12),
        )
      ],
    );
  }
}

class OtherStory extends StatelessWidget {
  final uid;
  const OtherStory({Key? key, this.uid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(3.5),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.orange, width: 2)),
          margin: EdgeInsets.only(top: 18, left: 5, bottom: 2, right: 5),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 30,
          ),
        ),
        Text(
          uid,
          style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
