// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String,
    cpf: json['cpf'] as String,
    date: json['date'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    confirmPassword: json['confirmpassword'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      'date': instance.date,
      'email': instance.email,
      'password': instance.password,
      'confirmpassword': instance.confirmPassword,
      'image': instance.image,
    };

Credentials _$CredentialsFromJson(Map<String, dynamic> json) {
  return Credentials(
    email: json['email'] as String,
    senha: json['senha'] as String,
  );
}

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{
      'email': instance.email,
      'senha': instance.senha,
    };
