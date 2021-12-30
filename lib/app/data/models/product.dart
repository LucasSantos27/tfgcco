part of models;

@JsonSerializable()
class Product {
  final String nome;
  final String marca_produto;
  final String categoria;
  final String descricao;
  final String fabricante;
  final String caracteristica;
  final String preco;
  final List<String> images;
  final bool available;

  Product({
    required this.nome,
    required this.marca_produto,
    required this.categoria,
    required this.descricao,
    required this.fabricante,
    required this.caracteristica,
    required this.preco,
    required this.images,
    required this.available,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
