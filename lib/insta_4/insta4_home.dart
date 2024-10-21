import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insta4Home extends StatelessWidget {
  const Insta4Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Insta4StoryArea(),
          Insta4FeedArea(),
        ],
      ),
    );
  }
}

class Insta4StoryArea extends StatelessWidget {
  const Insta4StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) => Insta4Story(userName: 'User $index')),
      ),
    );
  }
}

class Insta4Story extends StatelessWidget {
  final String userName;

  const Insta4Story({super.key, required this.userName,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          Container(width: 80, height: 80,
            decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(40)),),
          Text(userName, style: const TextStyle(color: Colors.black),)
        ],
      ),
    );
  }
}

final insta4FeedList = List.generate(3, (index) => Insta4Feed(index: index));

class Insta4Feed {
  late int _index;
  late String userName;
  late String content;
  late int likeCount;
  late int replyCount;
  late int shareCount;

  Insta4Feed({required int index}) {
    _index = index;
    userName = 'User $_index';
    content = 'Content ${_index}!';
    likeCount = _index * 10;
    replyCount = _index * 100;
    shareCount = _index * 100;
  }
}

class Insta4FeedArea extends StatelessWidget {
  const Insta4FeedArea({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: insta4FeedList.length,
      itemBuilder: (context, index) => Insta4FeedItem(feedItem: insta4FeedList[index],)
    );
  }
}

class Insta4FeedItem extends StatelessWidget {
  final Insta4Feed feedItem;
  
  const Insta4FeedItem({
    super.key, required this.feedItem,
  });

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
                  Container(width: 40, height: 40,
                    decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(40)),),
                  const SizedBox(width: 8,),
                  Text(feedItem.userName, style: const TextStyle(color: Colors.black),),
                ],
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
            ],
          ),
          Container(width: double.infinity, height: 280, color: Colors.blue.shade300,),
          Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
            Text('${feedItem.likeCount}', style: const TextStyle(color: Colors.black),),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble)),
            Text('${feedItem.replyCount}', style: const TextStyle(color: Colors.black),),
            IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.paperplane)),
            Text('${feedItem.shareCount}', style: const TextStyle(color: Colors.black),),
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: RichText(text: TextSpan(children: [
              TextSpan(text: feedItem.userName, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              const TextSpan(text: ' '),
              TextSpan(text: feedItem.content, style: const TextStyle(color: Colors.black)),
            ])),
          ),
         ],
      ),
    );
  }
}
