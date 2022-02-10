import 'package:flutter/material.dart';
import 'package:my_app/models/User.dart';
import 'package:my_app/widgets/profile_avatart.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUser;
  const Rooms({Key? key, required this.onlineUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 4,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUser.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CreateRoomButton(),
              );
            }
            final User user = onlineUser[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ProfileAvatar(imageUrl: user.imageUrl, isActive: true),
            );
          }),
    );
  }
}

class CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        borderSide: BorderSide(
          width: 2,
          color: Colors.blue,
        ),
        textColor: Colors.blue,
        child: Row(
          children: <Widget>[
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: <Color>[
                    Color.fromARGB(255, 19, 88, 145),
                    Color.fromARGB(255, 225, 116, 108)
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(
              child: Text('Create\nRoom'),
            )
          ],
        ));
  }
}
