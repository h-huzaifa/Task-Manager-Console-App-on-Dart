class Task {
  String title;
  String description;
  bool isCompleted;

  Task(this.title, this.description, {this.isCompleted = false});

  @override
  String toString() {
    return 'Title: $title\nDescription: $description\nCompleted: $isCompleted';
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'isCompleted': isCompleted,
      };

  static Task fromJson(Map<String, dynamic> json) {
    return Task(json['title'], json['description'],
        isCompleted: json['isCompleted']);
  }
}
