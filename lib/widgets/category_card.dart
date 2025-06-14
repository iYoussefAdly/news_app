import 'package:flutter/material.dart';
import 'package:news_app/Screens/category_page.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;

  CategoryCard({required this.categoryModel});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(category:categoryModel.name ,);
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16),
        child: Container(
          width: 160,
          height: 85,
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
