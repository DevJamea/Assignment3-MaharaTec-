import 'package:flutter/material.dart';
import '../instagram_ui_widets/header.dart';
import '../instagram_ui_widets/icons_bar.dart';
import '../instagram_ui_widets/post_body.dart';
import '../instagram_ui_widets/text_bar.dart';

import '../data/models.dart';

class InstagramPost extends StatelessWidget {
  PostModel postModel;
  Function fun;
  InstagramPost(this.postModel , this.fun);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InstagramHeader(postModel.instagramUser!),
        InstagramPostBody(postModel.image!),
        InstagramIconsBar(postModel , fun),
        InstagramTextBar(postModel.content!),
        const Divider()
      ],
    );
  }
}
