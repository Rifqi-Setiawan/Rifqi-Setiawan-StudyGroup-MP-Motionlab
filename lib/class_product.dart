class Product {
  final String imageUrl;
  final String title;
  final double price;

  Product({required this.imageUrl, required this.title, required this.price});
}

final List<Product> products = [
  Product(
    imageUrl: 'assets/images/jam.png', 
    title: 'Product 1',
    price: 29.99,
  ),
  Product(
    imageUrl: 'assets/images/baju.png', 
    title: 'Product 2',
    price: 19.99,
  ),
  Product(
    imageUrl: 'assets/images/headset.png', 
    title: 'Product 3',
    price: 39.99,
  ),
  Product(
    imageUrl: 'assets/images/sepatu.png', 
    title: 'Product 4',
    price: 49.99,
  ),
];