class Item {
  final String name;
  final int price;
  final String imageUrl; // URL for product image
  final int stock; // Stock count
  final double rating; // Product rating

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}
