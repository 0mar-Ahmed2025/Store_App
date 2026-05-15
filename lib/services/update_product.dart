import 'package:store_app/models/product_model.dart';
import 'package:store_app/network/api_helper.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String description,
    required double price,
    required String category,
    required String image,
    required int id,
  }) async {
    Map<String, dynamic> data = await ApiHelper().put(
      url: "https://fakestoreapi.com/products/$id",
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
