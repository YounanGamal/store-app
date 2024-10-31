class RatingModel {
  final double rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.formJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
