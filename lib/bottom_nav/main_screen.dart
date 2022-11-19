import 'package:flutter/material.dart';
import '../bottom_nav/likes_screen.dart';
import '../bottom_nav/posts_screen.dart';

import '../data/models.dart';
import '../data/myData.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  PageController pageController = PageController();
  int index = 0;

  likePost(PostModel postModel) {
    int index = postsModels.indexOf(postModel);
    postsModels[index].isLike = !postsModels[index].isLike;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
          controller: pageController,
          itemCount: 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return PostsScreen(likePost);
            } else {
              return LikesScreen(likePost);
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            pageController.animateToPage(i,
                duration: Duration(milliseconds: 100),
                curve: Curves.easeInOutSine);
            index = i;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorites"),
          ]),
    );
  }
}
