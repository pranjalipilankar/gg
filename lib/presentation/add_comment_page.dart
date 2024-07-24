// lib/presentation/add_comment_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:green_gather/model/comment_model.dart';
import 'package:green_gather/provider/comment_provider.dart';
import 'package:green_gather/services/api_service.dart';

class AddCommentPage extends StatefulWidget {
  @override
  _AddCommentPageState createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  final _nameController = TextEditingController();
  final _textController = TextEditingController();
  bool _isAnonymous = false;

  @override
  Widget build(BuildContext context) {
    final commentProvider = Provider.of<CommentProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Add Comment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Name:'),
                Checkbox(
                  value: _isAnonymous,
                  onChanged: (value) {
                    setState(() {
                      _isAnonymous = value ?? false;
                    });
                  },
                ),
                Text('Anonymous'),
              ],
            ),
            TextField(
              controller: _nameController,
              enabled: !_isAnonymous,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(labelText: 'Comment'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final comment = Comment(
                  id: '',
                  name: _isAnonymous ? 'Anonymous' : _nameController.text,
                  text: _textController.text,
                  timestamp: DateTime.now(),
                );

                commentProvider.addComment(comment).then((_) {
                  Navigator.pop(context);
                });
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
