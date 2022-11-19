import 'package:flutter/material.dart';

import '../data/models.dart';


class InstagramHeader extends StatelessWidget {
  InstagramUser user;
  InstagramHeader(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
           CircleAvatar(
              radius: 25, backgroundImage: NetworkImage(user.image!)),
          const SizedBox(
            width: 10,
          ),
           Text(
            user.name??'',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
         ( user.isVerified??false)?
          Image.asset(
            'images/quality.png',
            width: 20,
          ):const SizedBox(),
          const Spacer(),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}