import 'package:flutter/material.dart';
import 'http_service.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'post_detail.dart';
import 'post_model.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data!;
            return ListView(
              children: posts
                  .map(
                    (Post post) => ListTile(
                      title: Text("${post.nome}"),
                      subtitle: Text("${post.posto}" + "   Idt Mil: "+"${post.idtMil}"),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PostDetail(
                            post: post,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}