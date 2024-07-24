class Comment {
  final String id;
  final String name;
  final String text;
  final DateTime timestamp;

  Comment({
    required this.id,
    required this.name,
    required this.text,
    required this.timestamp,
  });

  // Factory method to create a Comment from a JSON object
  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['_id'],
      name: json['name'],
      text: json['text'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  // Method to convert a Comment object into a JSON object
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'text': text,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
