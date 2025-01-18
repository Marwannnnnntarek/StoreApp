import 'base_service.dart';
import 'package:myapp/models/product_model.dart';

class GetAllProductsService extends BaseService {
  Future<List<ProductModel>> getAllProducts() async {
    final data = await getRequest('https://fakestoreapi.com/products');
    return List<ProductModel>.from(
      data.map((item) => ProductModel.fromJson(item)),
    );
  }
}
