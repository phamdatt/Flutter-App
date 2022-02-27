import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doric/models/User.dart';
import 'package:doric/widgets/profile_avatart.dart';

class CreatePostContainer extends StatelessWidget {
  // final User currentUser;
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: [        
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                  child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: "What\'s your mind?"),
              ))
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    print('live');
                  },
                  icon: Icon(Icons.videocam, color: Colors.red),
                  label: Text('Live', style: TextStyle(color: Colors.black)),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () {
                    print('live');
                  },
                  icon: Icon(Icons.photo_library, color: Colors.green),
                  label: Text('Photo', style: TextStyle(color: Colors.black)),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () {
                    print('live');
                  },
                  icon: Icon(Icons.video_call, color: Colors.red),
                  label: Text('Room', style: TextStyle(color: Colors.black)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
