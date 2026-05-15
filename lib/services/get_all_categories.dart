import 'package:store_app/network/api_helper.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await ApiHelper().get(
      url: "https://fakestoreapi.com/products/categories",
    );

    return data;
  }
}
