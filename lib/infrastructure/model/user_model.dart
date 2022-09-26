class UserModel {
  final String name;
  final String email;
  final String id;

  UserModel(this.name, this.email, this.id);

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
  String toString() => 'UserModel<$UserModel>';
}
