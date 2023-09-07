import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/config.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_card.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../models/article_model.dart';
import '../models/news_list_builder.dart';
import '../services/news_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Daily",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                "News",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter( child :CategoriesList(),),
                  SliverToBoxAdapter(child: SizedBox(height: 20,)),
              NewsListBuilder(category: 'general',)
            ],
          )
        ));
  }
}


