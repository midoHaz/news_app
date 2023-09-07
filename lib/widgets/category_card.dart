import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.category, required this.categoryImage}) : super(key: key);
  final String category;
  final String categoryImage;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryView(category: category,)));
      },
      child: Container(
        width: 210,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:DecorationImage(
                image: AssetImage(categoryImage),
                fit: BoxFit.fill)),
        child:  Center(
            child: Text(
              category,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
