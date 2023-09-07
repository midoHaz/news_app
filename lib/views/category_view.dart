import 'package:flutter/material.dart';
import 'package:news_app/models/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  SafeArea(
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: CustomScrollView(
             slivers: [
               NewsListBuilder(category:category)
             ],
           ),
         ),
       ),
    );
  }
}
