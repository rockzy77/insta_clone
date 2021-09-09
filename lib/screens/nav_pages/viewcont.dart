import 'package:flutter/material.dart';

class ViewCont extends StatefulWidget {
  const ViewCont({Key? key}) : super(key: key);

  @override
  _ViewContState createState() => _ViewContState();
}

class _ViewContState extends State<ViewCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Text("viewcontent"),
    );
  }
}
