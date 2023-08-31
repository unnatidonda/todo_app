class thirdToDoModel {
  String? price;
  String? mapImage;
  String? time;
  String? place;

  String? image;

  thirdToDoModel({
    this.time,
    this.place,
    this.mapImage,
    this.price,
    this.image,
  });

  thirdToDoModel.fromJson(Map<String, dynamic> json) {
    price = json["price"];
    place = json["place"];
    mapImage = json["mapImage"];
    time = json["time"];
    image = json['image'];
  }
}
