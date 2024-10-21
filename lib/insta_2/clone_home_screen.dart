import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    // UserStoryArea, FeedListArea
    return const SingleChildScrollView(
      child: Column(
        children: [CloneStoryArea(), CloneFeedListArea()],
      ),
    );
    // return const Center(child: Icon(Icons.home, size: 100,),);
  }
}

class CloneStoryArea extends StatelessWidget {
  const CloneStoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) => CloneStory(userName: 'User $index')).toList(),
      ),
    );
  }
}

class CloneStory extends StatelessWidget {
  final String userName;

  const CloneStory({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(color: Colors.blue.shade300, borderRadius: BorderRadius.circular(40)),
          ),
          Text(userName),
        ],
      ),
    );
  }
}

class MockFeed {
  final String userName;
  final int likeCount;
  final String content;

  MockFeed({required this.userName, required this.likeCount, required this.content});
}

final mockFeedList = [
  MockFeed(
      userName: 'User 1',
      likeCount: 10,
      content: '플러터 잼있다. 플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.플러터 잼있다.'),
  MockFeed(userName: 'User 2', likeCount: 20, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 3', likeCount: 30, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 4', likeCount: 40, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 5', likeCount: 50, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 6', likeCount: 60, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 7', likeCount: 70, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 8', likeCount: 80, content: '플러터 잼있다.'),
  MockFeed(userName: 'User 9', likeCount: 90, content: '플러터 잼있다.'),
];

class CloneFeedListArea extends StatelessWidget {
  const CloneFeedListArea({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: mockFeedList.length,
        itemBuilder: (context, index) => FeedItem2(
              feedItem: mockFeedList[index],
            ));
  }
}

class FeedItem2 extends StatelessWidget {
  final MockFeed feedItem;

  const FeedItem2({super.key, required this.feedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(width: 40, height: 40, decoration: BoxDecoration(color: Colors.blue.shade300, borderRadius: BorderRadius.circular(40)),),
                  const SizedBox(width: 8,),
                  Text('User ${feedItem.userName}'),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, size: 28,)),
            ],
          ),
        ),
        Container(width: double.infinity, height: 280, color: Colors.indigo.shade300,),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.chat_bubble)),
            IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.paperplane)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('좋아요 ${feedItem.likeCount}개', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: feedItem.userName, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    const TextSpan(text: '  ',),
                    TextSpan(text: feedItem.content, style: const TextStyle(color: Colors.black,)),
                  ]
              )
          ),
        ),
      ],
    );
  }
}
