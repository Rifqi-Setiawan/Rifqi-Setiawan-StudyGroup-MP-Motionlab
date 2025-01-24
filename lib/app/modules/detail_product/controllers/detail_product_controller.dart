import 'package:get/get.dart';
import 'package:motion_shop_get_c_l_i/app/data/models/product_model.dart';
import 'package:motion_shop_get_c_l_i/app/data/services/product_service.dart';

class DetailProductController extends GetxController {
  //TODO: Implement DetailProductController

  var detailProduct = ProductModel();
  var isLoading = true.obs;
  @override
  void onInit() {
    var id = Get.arguments;
    fetchProductByID(id);
    super.onInit();
  }



  void fetchProductByID(int id) async{
  detailProduct = await ProductService().getDetailsProducts(id: id) ?? ProductModel();
  isLoading.value = false;
  }
}
