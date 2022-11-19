import 'package:flutter/material.dart';

import '../data/myData.dart';
import '../instagram_ui_widets/post.dart';

class LikesScreen extends StatelessWidget {
  
  Function fun;
  LikesScreen(this.fun);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: postsModels.where((element) => element.isLike).length,
        itemBuilder: (context, index) {
          return InstagramPost(
              postsModels.where((element) => element.isLike).toList()[index],
              fun);
        });
  }
}
