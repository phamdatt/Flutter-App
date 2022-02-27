import 'package:doric/models/User.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;
  const Post(
      {required this.user,
      required this.caption,
      required this.comments,
      required this.imageUrl,
      required this.likes,
      required this.shares,
      required this.timeAgo});
}
