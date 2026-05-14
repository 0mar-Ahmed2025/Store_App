import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class GetProductsByCategoryName {
  Future<List<ProductModel>> getProductsByCategoryName(
    String categoryName,
  ) async {
    // Implementation for fetching products by category name
    http.Response response = await http.get(
      Uri.parse("https://fakestoreapi.com/products/category/$categoryName"),
    );

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
