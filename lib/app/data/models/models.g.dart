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
      name: json['name'] as String,
      brand: json['brand'] as String,
      category: json['category'] as String?,
      description: json['description'] as String?,
      manufacturer: json['manufacturer'] as String?,
      info: json['info'] as String?,
      price: json['price'],
      image: json['image'] as String,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'brand': instance.brand,
      'category': instance.category,
      'description': instance.description,
      'manufacturer': instance.manufacturer,
      'info': instance.info,
      'price': instance.price,
      'image': instance.image,
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
