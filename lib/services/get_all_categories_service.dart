import 'base_service.dart';

class GetAllCategoriesService extends BaseService {
  Future<List<dynamic>> getAllCategories() async {
    final data = await getRequest('https://fakestoreapi.com/products/categories');
    return List<dynamic>.from(data);
  }
}
