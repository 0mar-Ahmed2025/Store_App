// ignore_for_file: unused_local_variable

import 'package:store_app/models/product_model.dart';
import 'package:store_app/network/api_helper.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String description,
    required double price,
    required String category,
    required String image,
  }) async {
    Map<String, dynamic> data = await ApiHelper().post(
      url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "description": description,
        "price": price,
        "category": category,
        "image": image,
      },
    );

    return ProductModel.fromJson(data);
  }
}
