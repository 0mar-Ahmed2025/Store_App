import 'package:store_app/models/product_model.dart';
import 'package:store_app/network/api_helper.dart';

class GetProductsByCategoryName {
  Future<List<ProductModel>> getProductsByCategoryName(
    String categoryName,
  ) async {
    // Implementation for fetching products by category name
    List<dynamic> data = await ApiHelper().get(
      url: "https://fakestoreapi.com/products/category/$categoryName",
    );

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
