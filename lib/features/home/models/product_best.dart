import 'package:nectar/core/constants/app_images.dart';

class ProductModelBest {
  final int id;
  final String name;
  final String image;
  final String quantitiy;
  final String price;

  ProductModelBest({required this.name, required this.image, required this.quantitiy, required this.price, required this.id});
}

List<ProductModelBest> productBest = [ProductModelBest(id: 1, name: 'Bell Pepper Red', image: AppImages.pepperPng, quantitiy: '1kg', price: '\$4.99'), ProductModelBest(id: 2, name: 'Ginger', image: AppImages.gingerPng, quantitiy: '250gm', price: '\$4.99'), ProductModelBest(id: 3, name: 'Organic Bananas', image: AppImages.bananaPng, quantitiy: '7pcs', price: '\$4.99'), ProductModelBest(id: 4, name: 'Red Apple', image: AppImages.appelPng, quantitiy: '1kg', price: '\$4.99'), ProductModelBest(id: 5, name: 'Mango', image: AppImages.mangoPng, quantitiy: '1kg', price: '\$4.99'), ProductModelBest(id: 6, name: 'Strawberry', image: AppImages.strawberryPng, quantitiy: '1kg', price: '\$4.99')];
