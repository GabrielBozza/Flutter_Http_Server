import 'package:flutter/foundation.dart';

class Post {
  final int idtMil;
  final String posto;
  final String nome;

  Post({
    required this.idtMil,
    required this.posto,
    required this.nome,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      idtMil: json['idtMil'] as int,
      posto: json['posto'] as String,
      nome: json['nome'] as String,
    );
  }
}
