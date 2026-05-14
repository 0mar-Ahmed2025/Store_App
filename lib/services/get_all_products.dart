// ignore_for_file: unused_local_variable
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductModel> products = [];
      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
      return products;
    } else {
      throw Exception(
        "there is a problem with status code ${response.statusCode}",
      );
    }
  }
}
