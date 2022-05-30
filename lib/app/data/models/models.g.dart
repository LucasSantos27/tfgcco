// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credentials _$CredentialsFromJson(Map<String, dynamic> json) => Credentials(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$CredentialsToJson(Credentials instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      nome: json['nome'] as String,
      marca_produto: json['marca_produto'] as String,
      categoria: json['categoria'] as String,
      descricao: json['descricao'] as String,
      fabricante: json['fabricante'] as String,
      caracteristica: json['caracteristica'] as String,
      preco: json['preco'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      available: json['available'] as bool,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'nome': instance.nome,
      'marca_produto': instance.marca_produto,
      'categoria': instance.categoria,
      'descricao': instance.descricao,
      'fabricante': instance.fabricante,
      'caracteristica': instance.caracteristica,
      'preco': instance.preco,
      'images': instance.images,
      'available': instance.available,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String,
      cpf: json['cpf'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      email: json['email'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'cpf': instance.cpf,
      'birthday': instance.birthday.toIso8601String(),
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'phone': instance.phone,
    };
