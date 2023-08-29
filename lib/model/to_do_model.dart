class ToDoModel {
  int? id;
  String? title;
  String? content;
  String? time;
  String? image;

  ToDoModel({
    this.id,
    this.title,
    this.content,
    this.time,
    this.image,
  });

  ToDoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['sub_title'];
    time = json['time'];
    image = json['image'];
  }
}
