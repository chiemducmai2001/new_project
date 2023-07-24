import 'package:flutter/material.dart';
import 'package:homeapp/util/bubble_stories.dart';
import 'package:homeapp/util/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'MaiChiem Duc',
    'Nhat Thanh',
    'Thanh',
    'Duc',
    'Thanh1',
    'Duc2',
    'Duc3'
  ];

  UserHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(Icons.add),
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Icon(Icons.favorite),
                    ),
                    Icon(Icons.share),
                  ],
                )
              ]),
        ),
        body: Column(
          children: [
            SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return BubbleStories(text: people[index]);
                    })),
            //POST
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(name: people[index]);
                  }),
            )
          ],
        ));
  }
}
