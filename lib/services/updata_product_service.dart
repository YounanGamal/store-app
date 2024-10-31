import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product%20model/product_model.dart';

class UpdataProductService {
  Future<ProductModel> updataProduct({
    required String title,
    required String price,
    required String image,
    required String description,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
        url: 'https://fakestoreapi.com/products',
        body: {
          "title": title,
          "price": price,
          "description": description,
          "image": image,
          "category": category,
        },
        token: '');
    return ProductModel.formJson(data);
  }
}
