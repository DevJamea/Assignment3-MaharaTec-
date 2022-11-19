import 'package:flutter/material.dart';
import '../data/models.dart';
import '../data/myData.dart';
import '../instagram_ui_widets/post.dart';

class PostsScreen extends StatelessWidget {
  Function fun;
  PostsScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: postsModels.length,
        itemBuilder: (context, index) {
          return InstagramPost(postsModels[index] , fun);
        });
  }
}
