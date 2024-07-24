import 'package:flutter/material.dart';
import 'package:green_gather/services/api_service.dart';
import 'package:green_gather/model/comment_model.dart';
import 'package:green_gather/provider/comment_provider.dart';
import 'package:green_gather/presentation/add_comment_page.dart';
import 'package:provider/provider.dart';


class CommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ensure the provider is correctly accessed
    final commentProvider = Provider.of<CommentProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: commentProvider.comments.isNotEmpty
                  ? ListView.builder(
                      itemCount: commentProvider.comments.length,
                      itemBuilder: (context, index) {
                        final comment = commentProvider.comments[index];
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          elevation: 3,
                          child: ListTile(
                            title: Text(
                              comment.name.isNotEmpty
                                  ? comment.name
                                  : 'Anonymous',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(comment.text),
                            trailing: Text(
                              _formatTimestamp(comment.timestamp),
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'No comments yet. Be the first to comment!',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCommentPage(),
            ),
          );
        },
        child: Icon(Icons.add_comment),
        tooltip: 'Add Comment',
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours} hours ago';
    } else {
      return '${difference.inDays} days ago';
    }
  }
}