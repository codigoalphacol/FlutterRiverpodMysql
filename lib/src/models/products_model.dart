class ProductsDataModel {
  int id, costo, venta, mayorista, stock;
  String nombre, codigo;

  ProductsDataModel({
    required this.id,
    required this.nombre,
    required this.codigo,
    required this.costo,
    required this.venta,
    required this.mayorista,
    required this.stock,
  });

  factory ProductsDataModel.fromMap(Map<String, dynamic> map) {
    return ProductsDataModel(
      id: map['id'] as int,
      nombre: map['nombre'] as String,
      codigo: map['codigo'] as String,
      costo: map['costo'] as int,
      venta: map['venta'] as int,
      mayorista: map['mayorista'] as int,
      stock: map['stock'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': id,
      'codigo': nombre,
      'costo': codigo,
      'venta': venta,
      'mayorista': mayorista,
      'stock': stock,
    } as Map<String, dynamic>;
  }
}
