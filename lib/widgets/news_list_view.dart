import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.articles}) : super(key: key);
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) =>  Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: NewsCard(articleModel: articles[index],),
            ),
            childCount:articles.length));
  }
}
