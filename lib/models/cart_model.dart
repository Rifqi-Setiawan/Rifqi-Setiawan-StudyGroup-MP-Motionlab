import 'package:get/get.dart';

class CartModel {
  String imageURL;
  String title;
  double price;
  RxInt quantity;
  CartModel({required this.imageURL, required this.title, required this.price, required this.quantity});
}