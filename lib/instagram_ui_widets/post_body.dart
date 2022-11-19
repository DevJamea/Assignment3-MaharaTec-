import 'package:flutter/material.dart';

class InstagramPostBody extends StatelessWidget {
  String image;
  InstagramPostBody(this.image);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: Image.network(
        image,
        fit: BoxFit.cover,
        height: 400,
        width: double.infinity,
      ),
    );
  }
}