
class ContactModelFields {
  static const String id = "_id";
  static const String name = "name";
  static const String surname = "surname";
  static const String phone = "phone";
  static const String photo = "photo";


  static const String contactsTable = "my_contacts";
}

class ContactModelSql {
  int? id;
  final String name;
  final String surname;
  final String phone;
  final String photo;

  ContactModelSql({
    this.id,
    required this.phone,
    required this.photo,
    required this.name,
    required this.surname,
  });

  ContactModelSql copyWith({
    String? name,
    String? surname,
    String? phone,
    String? photo,
    int? id,
  }) {
    return ContactModelSql(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      phone: phone ?? this.phone,
      photo: photo ?? this.photo,
      id: id ?? this.id,
    );
  }

  factory ContactModelSql.fromJson(Map<String, dynamic> json) {
    return ContactModelSql(
      name: json[ContactModelFields.name] ?? "",
      surname: json[ContactModelFields.surname] ?? "",
      phone: json[ContactModelFields.phone] ?? "",
      photo: json[ContactModelFields.photo] ?? "",
      id: json[ContactModelFields.id] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ContactModelFields.name: name,
      ContactModelFields.surname: surname,
      ContactModelFields.phone: phone,
      ContactModelFields.photo: photo,
    };
  }

  @override
  String toString() {
    return '''
      name: $name
      name: $surname
      phone: $phone
      photo: $photo
      id: $id, 
    ''';
  }
}