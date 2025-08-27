import 'package:nectar/core/constants/app_images.dart';

class ProductModel {
  final int id;
  final String name;
  final String image;
  final String quantitiy;
  final String price;

  ProductModel({required this.name, required this.image, required this.quantitiy, required this.price, required this.id});
}

List<ProductModel> product = [ProductModel(id: 1, name: 'Organic Bananas', image: AppImages.bananaPng, quantitiy: '7pcs', price: '\$4.99'), ProductModel(id: 2, name: 'Red Apple', image: AppImages.appelPng, quantitiy: '1kg', price: '\$4.99'), ProductModel(id: 3, name: 'Mango', image: AppImages.mangoPng, quantitiy: '1kg', price: '\$4.99'), ProductModel(id: 4, name: 'Strawberry', image: AppImages.strawberryPng, quantitiy: '1kg', price: '\$4.99')];
