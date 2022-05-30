part of models;

@JsonSerializable()
class User {
  final String name;
  final String cpf;
  final DateTime birthday;
  final String email;
  final String password;
  final String image;
  final String phone;

  User({
    required this.name,
    required this.cpf,
    required this.birthday,
    required this.email,
    required this.password,
    required this.image,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
