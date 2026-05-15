// ignore_for_file: unused_local_variable
import 'package:store_app/models/product_model.dart';
import 'package:store_app/network/api_helper.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await ApiHelper().get(
      url: "https://fakestoreapi.com/products",
    );
    List<ProductModel> productsList = [];
    for (var element in data) {
      productsList.add(ProductModel.fromJson(element));
    }
    return productsList;
  }
}
