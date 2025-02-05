import 'dart:convert';

import 'package:get/get.dart';
import 'package:motion_shop_get_c_l_i/app/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteController extends GetxController {
  //TODO: Implement FavoriteController

   var favoriteProducts = <int>[].obs; // Menyimpan ID produk favorit
  List<ProductModel> Products = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    getFavorites(); // Memuat data favorit dari SharedPreferences saat aplikasi dimulai
    isLoading = false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('favorites', jsonEncode(favoriteProducts));
  }

  Future<void> toggleFavorite(int productId) async {
    if (favoriteProducts.contains(productId)) {
      favoriteProducts.remove(productId); // Hapus dari favorit jika sudah ada
    } else {
      favoriteProducts.add(productId); // Tambahkan ke favorit jika belum ada
    }
    await saveFavorites(); // Simpan ke SharedPreferences setelah di-toggle
  }

  Future<void> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString('favorites');
    if (favoritesString != null) {
      favoriteProducts.value = List<int>.from(jsonDecode(favoritesString));
    }
    isLoading = false;
    update();
  }

  bool isFavorite(int? productId) {
    if (productId == null) return false;
    return favoriteProducts
        .contains(productId); 
  }
  
}
