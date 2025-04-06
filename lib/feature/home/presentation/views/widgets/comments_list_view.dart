import 'package:flutter/material.dart';

import 'comment_card.dart';

class CommentsListView extends StatelessWidget {
  final List comments;

  const CommentsListView({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: comments.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CommentCard(comment: comments[index]);
        },
      ),
    );
  }
}
