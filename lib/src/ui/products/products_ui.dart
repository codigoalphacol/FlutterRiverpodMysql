import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/products_provider.dart';

class ProductView extends ConsumerWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final productsData = ref.watch(getProductsData);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + Riverpod + Api  + MySql'),
        ),
        body: productsData.listProductsDataModel.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: productsData.listProductsDataModel.length,
                itemBuilder: (context, index) {
                  var data = productsData.listProductsDataModel[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                        data.nombre,
                        style: const TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        data.codigo,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  );
                }));
  }
}
