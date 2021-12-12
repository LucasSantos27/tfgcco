part of models;

@JsonSerializable()
class User {
  final String name;
  final String cpf;
  final String date;
  final String email;
  final String password;
  final String confirmPassword;
  final String image;

  User({
    required this.name,
    required this.cpf,
    required this.date,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
