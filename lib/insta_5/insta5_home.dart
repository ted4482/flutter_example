import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insta5Home extends StatelessWidget {
  const Insta5Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(10, (index) => Insta5Story(index: index,))
            ),
          ),
          const Insta5FeedArea(),
        ],
      ),
    );
  }
}

class Insta5Story extends StatelessWidget {
  final int index;

  const Insta5Story({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          Container(width: 80, height: 80,
            decoration: BoxDecoration(
              color: Colors.orange.shade200, borderRadius: BorderRadius.circular(40),
            ),),
          Text('User $index'),
        ],
      ),
    );
  }
}

final insta5FeedList = List.generate(10, (index) => Insta5Feed(index: index));

class Insta5Feed {
  final int index;
  late String userName;
  late String content;
  late int likeCount;
  late int replyCount;
  late int shereCount;

  Insta5Feed({required this.index}) {
    userName = 'User $index';
    content = 'Content $index';
    likeCount = index * 10;
    replyCount = index * 100;
    shereCount = index * 1000;
  }
}

class Insta5FeedArea extends StatelessWidget {
  const Insta5FeedArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: insta5FeedList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Insta5FeedItem(feedItem: insta5FeedList[index],),
    );
  }
}

class Insta5FeedItem extends StatelessWidget {
  final Insta5Feed feedItem;

  const Insta5FeedItem({super.key, required this.feedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(width: 40, height: 40,
                  decoration: BoxDecoration(color: Colors.orange.shade200, borderRadius: BorderRadius.circular(40)),),
                const SizedBox(width: 8,),
                Text(feedItem.userName),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        Container(width: double.infinity,height: 280, color: Colors.indigo.shade300,),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
            Text('${feedItem.likeCount}'),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble)),
            Text('${feedItem.replyCount}'),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.paperplane)),
            Text('${feedItem.shereCount}'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: RichText(text: TextSpan(
              children: [
                TextSpan(text: feedItem.userName, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                const TextSpan(text: ' '),
                TextSpan(text: feedItem.content, style: const TextStyle(color: Colors.black)),
              ]
          )),
        ),
      ],
    );
  }
}
