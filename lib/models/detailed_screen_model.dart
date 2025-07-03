// // product_model.dart

// class Product {
//   final String title;
//   final String description;
//   final String category;
//   final double price;
//   final List<String> images;
//   final String availabilityStatus;

//   Product({
//     required this.title,
//     required this.description,
//     required this.category,
//     required this.price,
//     required this.images,
//     required this.availabilityStatus,
//   });

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       category: json['category'] ?? '',
//       price: (json['price'] ?? 0).toDouble(),
//       images: List<String>.from(json['images'] ?? []),
//       availabilityStatus: json['availabilityStatus'] ?? '',
//     );
//   }
// }
