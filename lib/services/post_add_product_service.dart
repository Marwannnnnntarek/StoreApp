import 'package:myapp/models/product_model.dart';
import 'package:myapp/services/base_service.dart';

class PostAddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required int id,
  }) async {
    // ignore: missing_required_param
    Map<String, dynamic> data = await BaseService().postRequest(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'id': id,
      },
    );
    return ProductModel.fromJson(data);
  }
}
