import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<PostIndexModel>().getPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PostIndexModel>();
    final posts = model.posts ?? [];

    const noContent = Center(
      child: Text('暂无内容'),
    );

    final list = ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Text(
          posts[index].title!,
          style: Theme.of(context).textTheme.headline6,
        );
      },
    );
    return posts.isEmpty ? noContent : list;
  }
}
