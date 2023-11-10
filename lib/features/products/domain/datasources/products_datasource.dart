
import 'package:teslo_shop/features/products/domain/entities/product.dart';

abstract class ProductsDatasource {
  Future<List<Product>> getProductsByPage({int limit = 10, int offset = 0}); 

  Future<Product> getProductById(String id);

  Future<Product> searchProductsByTerm(String term);

  Future<Product> createUpdataProduct(Map<String, dynamic> productLike);
}