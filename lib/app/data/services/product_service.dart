import 'package:get/get.dart';
import 'package:motion_shop_get_c_l_i/app/data/models/data_product_model.dart';
import 'package:motion_shop_get_c_l_i/app/data/models/product_model.dart';
import 'package:motion_shop_get_c_l_i/app/data/shared/constanta.dart';

class ProductService {
  Future<DataProductModel?> getProducts() async {
    try {
      final response = await dio.get('$url/products/');
      print(response.data);
      if (response.statusCode == 200) {
        return DataProductModel.fromJson(response.data);
      } else {
        throw Exception(
            'API call failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<ProductModel?> getDetailsProducts({required int id}) async {
    try {
      final response = await dio.get('$url/products/$id');
      print(response.data);
      if (response.statusCode == 200) {
        return ProductModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<List<String>?> getCategories() async {
    try {
      final response = await dio.get('$url/products/category-list');

      if (response.statusCode == 200) {
        if (response.data is List) {
          final List<String> data = response.data.cast<String>();
          return data;
        } else {
          print('Error: Unexpected response format for categories');
          return null;
        }
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<DataProductModel?> getProductsByCategory(String selectedCategory) async{
    try{
      final response = await dio.get('$url/products/category/$selectedCategory');
      print(response.data);
      if(response.statusCode == 200) {
        return DataProductModel.fromJson(response.data);
      } else {
        throw Exception('API call failed with status code: ${response.statusCode}');
      }

    }catch(e) {
      return throw Exception(e);
    }
  } 
}
