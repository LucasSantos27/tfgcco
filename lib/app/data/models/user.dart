part of models;

@JsonSerializable()
class User {
  final String name;
  final String cpf;
  final DateTime birthday;
  final String email;
  String? password;
  String? image;
  String? phone;

  User({
    required this.name,
    required this.cpf,
    required this.birthday,
    required this.email,
    this.password,
    this.image,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
