import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
 const CategoriesListView({super.key});

  final List<CategoryModel> categories =
  const [CategoryModel(name: 'crime', image: 'assets/crime.jpeg'),
   CategoryModel(name: 'entertainment', image: 'assets/entertaiment.jpeg'),
   CategoryModel(name: 'education', image: 'assets/general.jpeg'),
   CategoryModel(name: 'health', image: 'assets/health.avif'),
   CategoryModel(name: 'science', image: 'assets/science.avif'),
   CategoryModel(name: 'lifestyle', image: 'assets/lifestyle.jpeg'),];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index],);
        },
      ),
    );
  }
}
