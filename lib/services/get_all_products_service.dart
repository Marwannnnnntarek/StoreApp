import 'dart:convert';

import 'package:myapp/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products')) as http.Response;
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
