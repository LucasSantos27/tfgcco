// ignore_for_file: non_constant_identifier_names

part of models;

@JsonSerializable()
class Product {
  final String name;
  final String brand;
  final String? category;
  final String? description;
  final String? manufacturer;
  final String? info;
  final dynamic price;
  final String image;
  final bool available;

  Product({
    required this.name,
    required this.brand,
    this.category,
    this.description,
    this.manufacturer,
    this.info,
    required this.price,
    required this.image,
    required this.available,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
