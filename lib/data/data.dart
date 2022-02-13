import 'package:my_app/models/Story.dart';
import 'package:my_app/models/User.dart';

import '../models/Post.dart';

final User currentUser = User(
    name: 'Marcus Ng',
    imageUrl:
        'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/s600x600/273171394_341642191142469_6474404056840764240_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=JXHfSjOhLhUAX8bhPnC&tn=DSbXPNyYt8IQw2-A&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT9rqCOtBXZxvRvGvAdgidQgewKt0pFETwzPKHw2lDxpRA&oe=62083437');

final List<User> onlineUser = [
  User(
      name: 'Pham Tien Dat',
      imageUrl:
          'https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/s600x600/273171394_341642191142469_6474404056840764240_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=JXHfSjOhLhUAX8bhPnC&tn=DSbXPNyYt8IQw2-A&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT9rqCOtBXZxvRvGvAdgidQgewKt0pFETwzPKHw2lDxpRA&oe=62083437'),
  User(
      name: 'Duong Thi Cam Nhung',
      imageUrl:
          'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/p843x403/269843565_310268560993917_8956338379074197752_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=ZeRRjodaAFUAX8iYXTW&tn=DSbXPNyYt8IQw2-A&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT-Y7IwPcAcMiMosbhQqVUPGxjv4NebnhBoEwOMY92HlSQ&oe=620844F3'),
  User(
      name: 'LyLy',
      imageUrl:
          'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/p843x403/273669274_503210154497357_9084016875166606093_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=IFqsekcSPVcAX9d4krf&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT-NyJEd1loXvznOH1Ow-jz4X318rwDIFlSj4FMB-nrNLQ&oe=62087437'),
  User(
      name: 'Lan Anh Vo',
      imageUrl:
          'https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/p720x720/273581633_161231972911615_6218648357111660814_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=9TCi5ttUV_EAX_KjZvc&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT_fyj-mqyOhGCH_cR4EiAQsMAnkUGGgf5WJlyIKzoxhfw&oe=6208F339'),
  User(
      name: 'Alone',
      imageUrl:
          'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/p843x403/273594849_3797052360519804_5990368380366991685_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=5cd70e&_nc_ohc=q2_EbJi6CcwAX8k5w-K&_nc_ht=scontent.fsgn2-3.fna&oh=00_AT8jXSWLCJLbBmQgH3-gIPw8xwcI6NIj-cv55zlMbZ9M9g&oe=6208E9B2'),
];

final List<Story> story = [
  Story(
      user: onlineUser[0],
      imageUrl:
          'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/p843x403/273577522_4970940396335132_5547920012704768275_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=730e14&_nc_ohc=f646d0vd0PIAX-2CKFO&tn=DSbXPNyYt8IQw2-A&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT8MwtNjEQtLiORhnqTFyarKqbAuP8KyXUgEjZT1GIf4ww&oe=6209B9FB'),
  Story(
      user: onlineUser[1],
      imageUrl:
          'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/p843x403/273697358_503892301146733_2420155558171209192_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=IJ2zQ83EKzoAX8Pbxbe&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT9AwMYrlLMoyHd6jTpuAStJcBrRJGDVrPoz_gnIXoCweg&oe=6209B125'),
           Story(
      user: onlineUser[2],
      imageUrl:
          'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/s1080x2048/273694846_119521063957928_3470693029933276191_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=5cd70e&_nc_ohc=c9E0jQ_J0VcAX-BAFFH&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT9YWYqaHKMY-NQeSEYl0j-G0hVXUWhPu7ibrNUWqApJ1A&oe=6207FF76'),
           Story(
      user: onlineUser[3],
      imageUrl:
          'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/p843x403/272886244_5690079027673750_4947087328806662917_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=730e14&_nc_ohc=UDpFh0UhWD8AX_2QZCk&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT8SsWvhq5aTwrtXEwdoBrkb2obCdBJ8rlwfFREOSQJVcQ&oe=6208CE5B'),
           Story(
      user: onlineUser[4],
      imageUrl:
          'https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/273637403_149490950782997_2818941169645527511_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=5cd70e&_nc_ohc=MlzbIgsrLDcAX8eYp0P&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT9xrWQUiGt-REcQsagAgooFeYfihKZCi0VlUBYTZp1ZuA&oe=6208B55D'),
];
final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUser[0],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    imageUrl: 'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUser[1],
    caption: 'This is a very good boi.',
    timeAgo: '8hr',
    imageUrl:
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUser[2],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    imageUrl:
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUser[3],
    caption:
        'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    imageUrl: 'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 482,
    comments: 37,
    shares: 9,
  ),

];