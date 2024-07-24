import 'package:flutter/material.dart';
import 'package:green_gather/model/comment_model.dart'; // Adjust the path as needed
import '../services/api_service.dart';
import 'package:green_gather/model/comment_model.dart';
import 'package:green_gather/provider/comment_provider.dart';

class CommentProvider with ChangeNotifier {
  List<Comment> _comments = [];

  List<Comment> get comments => _comments;

  Future<void> fetchComments() async {
    try {
      _comments = await ApiService.getComments();
      notifyListeners();
    } catch (e) {
      print('Failed to load comments: $e');
    }
  }

  Future<void> addComment(Comment comment) async {
    try {
      await ApiService.postComment(comment);
      _comments.add(comment);
      fetchComments();
    } catch (e) {
      print('Failed to post comment: $e');
    }
  }
}
