import 'package:store_app/models/product%20model/rating_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.formJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'].toString(),
      description: jsonData['description'],
      image: jsonData['image'],
      rating: RatingModel.formJson(
        jsonData['rating'],
      ),
    );
  }
}
