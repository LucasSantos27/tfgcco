part of models;

@JsonSerializable()
class Credentials {
  final String email;
  final String senha;

  Credentials({
    required this.email,
    required this.senha,
  });

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return _$CredentialsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CredentialsToJson(this);
}
