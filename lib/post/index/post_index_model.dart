import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../app/app_config.dart';
import '../post.dart';

class PostIndexModel extends ChangeNotifier {
  List<Post>? posts;

  // PostIndexModel() {
  //   getPosts();
  // }

  List<Post> parsePosts(responseBody) {
    return jsonDecode(responseBody)
        .map<Post>((item) => Post.fromJson(item))
        .toList();
  }

  Future<List<Post>> getPosts() async {
    final uri = Uri.parse('${AppConfig.apiBaseUrl}/posts');
    final response = await http.get(uri);
    final _posts = parsePosts(response.body);
    posts = _posts;
    notifyListeners();
    return _posts;
  }
}
