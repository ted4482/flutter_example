import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeArea3 extends StatelessWidget {
  const HomeArea3({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          UserStoryArea3(),
          UserFeedArea3()
        ],
      ),
    );
  }
}

class UserStoryArea3 extends StatelessWidget {
  const UserStoryArea3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) => UserStory3(index: index)).toList(),
      ),
    );
  }
}

class UserStory3 extends StatelessWidget {
  final int index;

  const UserStory3({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width:80, height:80,
            decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(40)),
          ),
          Text('User $index', style: const TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}

class UserFeedArea3 extends StatelessWidget {
  const UserFeedArea3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: userFeedList3.length,
        itemBuilder: (context, index) => UserFeedItem3(feedItem: userFeedList3[index])
    );
  }
}

final userFeedList3 = [
  UserFeed3(userName: 'User 1', likeCount: 10, replayCount: 100, shareCount: 100, content: 'Flutter! '),
  UserFeed3(userName: 'User 2', likeCount: 20, replayCount: 200, shareCount: 200, content: 'Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! Flutter! '),
  UserFeed3(userName: 'User 3', likeCount: 30, replayCount: 300, shareCount: 300, content: 'Flutter! '),
  UserFeed3(userName: 'User 4', likeCount: 40, replayCount: 400, shareCount: 400, content: 'Flutter! '),
  UserFeed3(userName: 'User 5', likeCount: 50, replayCount: 500, shareCount: 500, content: 'Flutter! '),
  UserFeed3(userName: 'User 6', likeCount: 60, replayCount: 600, shareCount: 600, content: 'Flutter! '),
  UserFeed3(userName: 'User 7', likeCount: 70, replayCount: 700, shareCount: 700, content: 'Flutter! '),
  UserFeed3(userName: 'User 8', likeCount: 80, replayCount: 800, shareCount: 800, content: 'Flutter! '),
  UserFeed3(userName: 'User 9', likeCount: 90, replayCount: 900, shareCount: 900, content: 'Flutter! '),
];

class UserFeed3 {
  final String userName;
  final int likeCount;
  final int replayCount;
  final int shareCount;
  final String content;

  UserFeed3({required this.userName, required this.likeCount, required this.replayCount, required this.shareCount, required this.content});
}

class UserFeedItem3 extends StatelessWidget {
  final UserFeed3 feedItem;

  const UserFeedItem3({super.key, required this.feedItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(width: 40, height: 40, decoration: BoxDecoration(color: Colors.orange.shade300, borderRadius: BorderRadius.circular(40)),),
                  const SizedBox(width: 8,),
                  Text(feedItem.userName, style: const TextStyle(color: Colors.black),),
                ],
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Container(width: double.infinity, height: 280, color: Colors.indigo.shade300,),
          Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
            Text('${feedItem.likeCount}'),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble)),
            Text('${feedItem.replayCount}'),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.paperplane)),
            Text('${feedItem.shareCount}'),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,),
            child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: feedItem.userName, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      const TextSpan(text: ' '),
                      TextSpan(text: feedItem.content,
                          style: const TextStyle(color: Colors.black)),
                    ]
              ),
            )
          )
        ],
      ),
    );
  }
}

