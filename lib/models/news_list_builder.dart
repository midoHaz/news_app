import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../services/news_service.dart';
import '../widgets/news_list_view.dart';
import 'article_model.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,required this.category
  });
  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  List<ArticleModel> articles=[];
  bool isLoading=true;

  @override
  void initState(){
    super.initState();
    getNews();
  }

  Future<void> getNews() async{
    articles =await NewsService(Dio()).getGeneralNews(category: widget.category);
    isLoading=false;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading?const SliverToBoxAdapter(child: Padding(
      padding: EdgeInsets.only(top: 250.0),
      child: Center(child: CircularProgressIndicator()),
    )):NewsList(articles:articles,);
  }
}