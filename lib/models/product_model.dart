import 'package:get/get.dart';

class ProductModel {
  final String imageUrl;
  final String title;
  final double price;
  final String description;
  RxBool favorite;

  ProductModel({required this.imageUrl, required this.title, required this.price, required this.description, required this.favorite});
}