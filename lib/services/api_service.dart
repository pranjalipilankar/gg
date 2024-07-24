// lib/services/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:green_gather/model/comment_model.dart';

class ApiService {
  static const baseUrl = 'http://localhost:3000'; 

  static Future<List<Comment>> getComments() async {
    final response = await http.get(Uri.parse('$baseUrl/comments'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Comment.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }

  static Future<void> postComment(Comment comment) async {
    final response = await http.post(
      Uri.parse('$baseUrl/comments'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(comment.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to post comment');
    }
  }
}

