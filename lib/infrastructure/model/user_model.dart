class UserModel {
  final String name;
  final String email;
  final String? id;

  UserModel({required this.name, required this.email, this.id});

  UserModel.fromJson(
    Map<String, dynamic> json,
  )   : name = json['name'],
        email = json['email'],
        id = json['id'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'id': id,
      };

  @override
  String toString() {
    return 'UserModel{name: $name, email: $email, id: $id}';
  }
}
