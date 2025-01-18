class ProductModel {
  final int id;
  final String title;
  final double price; // Ensure price is double
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.rating,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductModel.fromJson(jsondata) {
    return ProductModel(
      id: jsondata['id'],
      title: jsondata['title'],
      price: jsondata['price'] is int
          ? (jsondata['price'] as int).toDouble()
          : jsondata['price'], // Safely handle int to double conversion
      description: jsondata['description'],
      image: jsondata['image'],
      rating: RatingModel.fromJson(jsondata['rating']),
    );
  }
}


class RatingModel {
  final double rate; // Ensure rate is double
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsondata) {
    return RatingModel(
      rate: jsondata['rate'] is int
          ? (jsondata['rate'] as int).toDouble()
          : jsondata['rate'], // Safely handle int to double conversion
      count: jsondata['count'],
    );
  }
}
