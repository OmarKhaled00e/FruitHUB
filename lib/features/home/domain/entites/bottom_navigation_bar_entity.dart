import 'package:fruit_hub/core/utils/assets.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String name;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });
}

List<BottomNavigationBarEntity> get botomNavigationBarItems => [
  BottomNavigationBarEntity(
    activeImage: Assets.imageVuesaxBoldHome,
    inActiveImage: Assets.imageVuesaxOutlineHome,
    name: 'الرئيسية',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imageVuesaxBoldProducts,
    inActiveImage: Assets.imageVuesaxOutlineProducts,
    name: 'المنتجات',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imageVuesaxBoldShoppingCart,
    inActiveImage: Assets.imageVuesaxOutlineShoppingCart,
    name: 'سلة التسوق',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imageVuesaxBoldUser,
    inActiveImage: Assets.imageVuesaxOutlineUser,
    name: 'حسابي',
  ),
];
