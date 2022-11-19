import 'package:flutter/material.dart';

class InstagramTextBar extends StatelessWidget {
  String content;
  InstagramTextBar(this.content);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Text(content,
            style: const TextStyle(color: Colors.black, fontSize: 16)));
  }
}
