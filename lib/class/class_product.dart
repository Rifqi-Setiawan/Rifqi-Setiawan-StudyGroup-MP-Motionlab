class Product {
  final String imageUrl;
  final String title;
  final double price;

  Product({required this.imageUrl, required this.title, required this.price});
}

final List<Product> products = [
  Product(
    imageUrl: 'assets/images/jam.png', 
    title: 'Mi Band 8 Pro',
    price: 54.00,
  ),
  Product(
    imageUrl: 'assets/images/baju.png', 
    title: 'Lycra Men’s shirt',
    price: 12.00,
  ),
  Product(
    imageUrl: 'assets/images/headset.png', 
    title: 'Siberia 800',
    price: 45.00,
  ),
  Product(
    imageUrl: 'assets/images/sepatu.png', 
    title: 'Strawberry ',
    price: 35.00,
  ),
];