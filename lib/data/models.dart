class PostModel {
  String? content;
  String? image;
  bool isLike = false;
  InstagramUser? instagramUser;
  PostModel.fromMap(Map map) {
    content = map['post_content'];
    image = map['post_image'];
    instagramUser = InstagramUser.fromMap(map['user']);
  }
}

class InstagramUser {
  String? image;
  String? name;
  bool? isVerified;
  InstagramUser.fromMap(Map map) {
    image = map['image'];
    name = map['name'];
    isVerified = map['isVerified'];
  }
}
