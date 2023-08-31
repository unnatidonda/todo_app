class ToDoModelData {
  String? title;

  String? image;

  ToDoModelData({
    this.title,
    this.image,
  });

  ToDoModelData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
  }
}
