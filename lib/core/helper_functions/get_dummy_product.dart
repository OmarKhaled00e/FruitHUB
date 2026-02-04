import 'package:fruit_hub/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Apple',
    code: 'FRU123',
    description: 'A fresh and juicy apple.',
    price: 1.99,
    isFeatured: true,
    expirationsMonths: 6,
    numberOfCalories: 95,
    reviews: [],
    unitAmount: 1,
  );
}

List<ProductEntity> getDummyProducts() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
