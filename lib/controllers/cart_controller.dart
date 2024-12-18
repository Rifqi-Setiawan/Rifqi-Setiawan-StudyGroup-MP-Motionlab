import 'package:get/get.dart';
import 'package:motion_week_2/models/cart_model.dart';

class CartController extends GetxController {
  var Cart = <CartModel>[].obs;

  void addCart(String imageURL, String title, double price, RxInt quantity) {
    var existingCart = Cart.firstWhereOrNull((cart) => cart.title == title);

    if (existingCart != null) {
      existingCart.quantity.value += quantity.value;
    } else {
      var newCart = CartModel(
        imageURL: imageURL,
        title: title,
        price: price,
        quantity: quantity,
      );
      Cart.add(newCart);
    }
  }

  void incrementQuantity(CartModel cart) {
    cart.quantity.value++;
  }

  void decrementQuantity(CartModel cart) {
    if (cart.quantity.value > 0) {
      cart.quantity.value--;
    }
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (var cart in Cart) {
      total += cart.price * cart.quantity.value;
    }
    return total;
  }
  
}
