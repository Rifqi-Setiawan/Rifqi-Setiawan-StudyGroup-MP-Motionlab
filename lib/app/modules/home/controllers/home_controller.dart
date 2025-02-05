import 'package:get/get.dart';
import 'package:motion_shop_get_c_l_i/app/data/models/data_product_model.dart';
import 'package:motion_shop_get_c_l_i/app/data/models/product_model.dart';
import 'package:motion_shop_get_c_l_i/app/data/services/product_service.dart';
import 'package:motion_shop_get_c_l_i/app/modules/favorite/controllers/favorite_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  String selectedCategory = "All";
  var filteredProduct = <ProductModel>[].obs;
  var listCategory = <String>[].obs;
  var product = DataProductModel().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategory();
    fetchProduct();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchProduct() async{
    product.value = await ProductService().getProducts() ?? DataProductModel();
    filteredProduct.value = product.value.products ?? [];
    isLoading.value = false;
  }

  void fetchCategory() async{
    listCategory.value = await ProductService().getCategories() ?? <String>[];
  }

  void changeCategory(String category) async {
    selectedCategory = category;
    update();
    if(category == "All") {
      product.value = await ProductService().getProducts() ?? DataProductModel();
    } else {
      product.value = await ProductService().getProductsByCategory(category) ?? DataProductModel();
    }
    filteredProduct.value = product.value.products ?? [];
    update();
  }
   final FavoriteController favoriteController = Get.put(FavoriteController());

  // Periksa apakah produk adalah favorit
  bool isFavorite(int? productId) {
    if (productId == null) return false;
    return favoriteController.favoriteProducts.contains(productId);
  }

  // Toggle status favorit produk
  void toggleFavorite(int productId) {
    favoriteController.toggleFavorite(productId);
  }
}
