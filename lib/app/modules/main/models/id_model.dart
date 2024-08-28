// ignore_for_file: prefer_collection_literals

class IdModel {
  int? id;
  String? name;
  String? email;
  String? profilepicture;
  String? location;
  String? createdat;

  IdModel(
      {this.id,
      this.name,
      this.email,
      this.profilepicture,
      this.location,
      this.createdat});

  IdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profilepicture = json['profilepicture'];
    location = json['location'];
    createdat = json['createdat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['profilepicture'] = profilepicture;
    data['location'] = location;
    data['createdat'] = createdat;
    return data;
  }
}
