import 'package:get/get.dart';
import 'package:motion_week_2/models/product_model.dart';

class ProductController extends GetxController {
  final List<ProductModel> products = [
  ProductModel(
    imageUrl: 'assets/images/jam.png', 
    title: 'Mi Band 8 Pro',
    price: 54.00,
    description: "Add a touch of sophistication to your style with this elegant analog watch. Crafted with precision, it features a durable stainless steel case and a minimalist yet timeless design. Whether for formal events or everyday wear, this watch is the perfect blend of functionality and luxury.",
    favorite: true.obs,
  ),
  ProductModel(
    imageUrl: 'assets/images/baju.png', 
    title: 'Lycra Men’s shirt',
    price: 12.00,
    description: "This classic cotton shirt is designed for all-day comfort and effortless style. Made from premium, breathable fabric, it ensures durability and a soft touch against the skin. Perfect for casual outings or semi-formal occasions, this versatile shirt comes in various modern colors, making it an essential addition to your wardrobe.",
    favorite: false.obs,
  ),
  ProductModel(
    imageUrl: 'assets/images/headset.png', 
    title: 'Siberia 800',
    price: 45.00,
     description: "Immerse yourself in high-quality sound with this wireless headset. Equipped with noise-cancellation technology and a long-lasting battery, it ensures uninterrupted music and calls. Its ergonomic design guarantees comfort during extended use, making it ideal for gaming, work, or travel.",
     favorite: true.obs,
  ),
  ProductModel(
    imageUrl: 'assets/images/sepatu.png', 
    title: 'Strawberry ',
    price: 35.00,
    description: "Step up your game with these performance-focused running sneakers. Featuring lightweight materials and superior cushioning, these shoes offer maximum comfort and support during your workouts. The breathable design keeps your feet cool, while the stylish look makes them suitable for both sports and casual wear.",
    favorite: false.obs,
  ),
];

void changeIsFavorite(ProductModel product) {
  product.favorite.value = !product.favorite.value;
}
}