import 'base_service.dart';
import 'package:myapp/models/product_model.dart';

class GetCategoryService extends BaseService {
  Future<List<ProductModel>> getCategory({required String categoryName}) async {
    final data = await getRequest(
        'https://fakestoreapi.com/products/category/$categoryName');
    return List<ProductModel>.from(
      data.map((item) => ProductModel.fromJson(item)),
    );
  }
  
}
