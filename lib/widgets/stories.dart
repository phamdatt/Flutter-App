import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_app/data/data.dart';
import 'package:my_app/models/Story.dart';
import 'package:my_app/models/User.dart';
import 'package:my_app/widgets/profile_avatart.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> story;
  const Stories({Key? key, required this.currentUser, required this.story})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + story.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: _StoryCard(isAddStory: true, currentUser: currentUser),
              );
            }
            final Story storires = story[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(story: storires),
            );
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User? currentUser;
  final Story? story;
  const _StoryCard(
      {Key? key, this.currentUser, this.isAddStory = false, this.story})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
            top: 8,
            left: 12,
            child: isAddStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      color: Color.fromARGB(255, 46, 144, 225),
                      onPressed: () {},
                    ),
                  )
                : ProfileAvatar(
                    imageUrl: story!.user.imageUrl,
                  hasBorder:!story!.isViewed
                  ))
      ],
    );
  }
}
