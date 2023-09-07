import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);
 final List<Widget> categories =const [
    CategoryCard(
        category: 'Sports', categoryImage: 'assets/images/sports.avif'),
    CategoryCard(
        category: 'Business', categoryImage: 'assets/images/business.avif'),
    CategoryCard(
        category: 'Entertainment', categoryImage: 'assets/images/entertaiment.avif'),
    CategoryCard(
        category: 'General', categoryImage: 'assets/images/general.avif'),
    CategoryCard(
        category: 'Health', categoryImage: 'assets/images/health.avif'),
    CategoryCard(
        category: 'Science', categoryImage: 'assets/images/science.avif'),
    CategoryCard(
        category: 'Technology', categoryImage: 'assets/images/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => categories[index],
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          itemCount: categories.length,
        ));
  }
}
