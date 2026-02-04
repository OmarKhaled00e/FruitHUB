import 'package:fruit_hub/core/entities/review_entity.dart';

num getAvrgRating(List<ReviewEntity> reviews) {
  var sum = 0.0;
  for (var review in reviews) {
    sum += review.ratting;
  }
  return sum / reviews.length;
}
