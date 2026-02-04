
import 'package:fruit_hub/core/entities/review_entity.dart';


class ProductEntity {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;
  final List<ReviewEntity> reviews;
  final int unitAmount;

  ProductEntity({
    required this.name,
    required this.code,
    required this.reviews,
    required this.description,
    required this.price,

    this.imageUrl,
    this.isOrganic = false,
    required this.isFeatured,
    required this.expirationsMonths,
    required this.numberOfCalories,
    required this.unitAmount,
  });
}
