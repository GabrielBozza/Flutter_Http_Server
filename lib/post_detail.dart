import 'package:flutter/material.dart';
import 'post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  PostDetail({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações pessoais"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ListTile(
                      title: Text("Nome"),
                      subtitle: Text("${post.posto}"),
                    ),
                    ListTile(
                      title: Text("Posto"),
                      subtitle: Text("${post.idtMil}"),
                    ),
                    ListTile(
                      title: Text("Idt Mil"),
                      subtitle: Text("${post.nome}"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
