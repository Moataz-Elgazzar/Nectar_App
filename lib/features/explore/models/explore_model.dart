
import 'package:flutter/material.dart';
import 'package:nectar/core/constants/app_images.dart';

class ExploreModel {
final String image;
final String text;
final Color color;


ExploreModel({required this.color, required this.image , required this.text });

}

List<ExploreModel> model = [
  ExploreModel(image: AppImages.fruitsPng, text: 'Frash Fruits\n& Vegetable' , color: Color(0xFF53B175)),
  ExploreModel(image: AppImages.oilPng, text: 'Cooking Oil\n& Ghee', color: Color(0xFFF8A44C)),
  ExploreModel(image: AppImages.fishPng, text: 'Meat & Fish', color: Color(0xFFF7A593)),
  ExploreModel(image: AppImages.bakeryPng, text: 'Bakery & Snacks', color: Color(0xFFD3B0E0)),
  ExploreModel(image: AppImages.dairyPng, text: 'Dairy & Eggs', color: Color(0xFFFDE598)),
  ExploreModel(image: AppImages.beveragesPng, text: 'Beverages', color: Color(0xFFB7DFF5)),
  ExploreModel(image: AppImages.fruitsPng, text: 'Frash Fruits\n& Vegetable', color: Color(0xFF53B175)),
  ExploreModel(image: AppImages.oilPng, text: 'Cooking Oil\n& Ghee', color: Color(0xFFF8A44C)),
];