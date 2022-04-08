import 'dart:convert';

import 'package:app_mysql/src/models/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class GetApiManager extends ChangeNotifier {
  List<ProductsDataModel> listProductsDataModel = [];

  GetApiManager() {
    getProductsData();
  }

  Future getProductsData() async {
    listProductsDataModel = [];

    try {
      http.Response response =
          await http.get(Uri.parse("http://localhost:3000/getproductos"));

      var data = jsonDecode(response.body);
      for (int i = 0; i < data.length; i++) {
        listProductsDataModel.add(ProductsDataModel.fromMap(data[i]));
      }
    } catch (e) {
      print(e.toString());
    }

    notifyListeners();
  }
}
