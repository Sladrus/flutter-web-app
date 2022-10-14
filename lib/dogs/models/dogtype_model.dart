class DogTypeModel {
  late List<Data> _data;
  List<Data> get data => _data;

  DogTypeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
  }
}

class Data {
  int? id;
  String? title;
  late List<Dogs> _dogs;
  List<Dogs> get dogs => _dogs;

  Data({this.id, this.title});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    if (json['dogs'] != null) {
      _dogs = <Dogs>[];
      json['dogs'].forEach((v) {
        _dogs.add(new Dogs.fromJson(v));
      });
    }
  }
}

class Dogs {
  int? id;
  String? name;
  int? dogTypeId;
  String? icon;
  int? price;
  String? desc;
  String? age;
  String? gender;
  String? createdAt;
  String? updatedAt;

  late List<Parents> _parents;
  List<Parents> get parents => _parents;

  Dogs(
      {this.id,
      this.name,
      this.dogTypeId,
      this.icon,
      this.price,
      this.desc,
      this.age,
      this.gender,
      this.createdAt,
      this.updatedAt});

  Dogs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    dogTypeId = json['dog_type_id'];

    icon = json['icon'];
    price = json['price'];
    desc = json['desc'];
    age = json['age'];
    gender = json['gender'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['parents'] != null) {
      _parents = <Parents>[];
      json['parents'].forEach((v) {
        _parents.add(new Parents.fromJson(v));
      });
    }
  }
}

class Parents {
  int? id;
  String? title;
  String? desc;
  String? icon;
  String? createdAt;
  String? updatedAt;

  Parents(
      {this.id,
      this.title,
      this.desc,
      this.icon,
      this.createdAt,
      this.updatedAt});

  Parents.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    desc = json['desc'];
    icon = json['icon'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
