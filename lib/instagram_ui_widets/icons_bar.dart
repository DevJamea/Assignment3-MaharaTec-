import 'package:flutter/material.dart';
import '../data/models.dart';

class InstagramIconsBar extends StatelessWidget {

  PostModel postModel;
  Function fun;
  InstagramIconsBar(this.postModel , this.fun);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () => fun(postModel),
            child: Image.asset(
              postModel.isLike ? 'images/liked.png' : 'images/like.png',
              width: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/comment.png',
            width: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/share.png',
            width: 25,
          ),
          const Spacer(),
          Image.asset(
            'images/save.png',
            width: 25,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
