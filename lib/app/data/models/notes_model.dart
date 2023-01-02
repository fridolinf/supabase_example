class Notes {
  int? id;
  int? userId;
  String? title;
  String? description;
  String? createdAt;

  Notes({this.id, this.userId, this.title, this.description, this.createdAt});

  Notes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['title'];
    description = json['description'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['title'] = title;
    data['description'] = description;
    data['created_at'] = createdAt;
    return data;
  }

  static List<Notes> fromJsonList(List? data) {
    if (data == null || data.isEmpty) return [];
    return data.map((e) => Notes.fromJson(e)).toList();
  }
}
