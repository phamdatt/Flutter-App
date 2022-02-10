import 'package:flutter/material.dart';
import 'package:my_app/widgets/circle_button.dart';
import 'package:my_app/widgets/create_post_container.dart';
import 'package:my_app/data/data.dart';
import 'package:my_app/widgets/room.dart';

class HomeScreenFb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: const Text('facebook',
              style: const TextStyle(
                  color: Color.fromARGB(255, 28, 146, 244),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2)),
          centerTitle: false,
          floating: true,
          actions: [
            CirCleButton(
                icon: Icons.search,
                iconSize: 24,
                onPress: () {
                  print("search");
                }),
            CirCleButton(
                icon: Icons.messenger_outline_outlined,
                iconSize: 24,
                onPress: () {
                  print("message");
                }),
          ],
        ),
        SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser)),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(child: Rooms(onlineUser: onlineUser))),
      ],
    ));
  }
}
