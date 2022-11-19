import 'package:flutter/material.dart';

class InstagramAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/logo.png',
          width: 120,
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color.fromARGB(255, 17, 14, 14),
        ),
        actions: [
          const Text('hello'),
          const Text('hello'),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'images/refresh.png',
              width: 30,
            ),
          )
        ]);
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}