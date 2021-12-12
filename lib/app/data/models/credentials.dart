part of models;

@JsonSerializable()
class Credentials {
  final String email;
  final String password;

  Credentials({
    required this.email,
    required this.password,
  });

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
