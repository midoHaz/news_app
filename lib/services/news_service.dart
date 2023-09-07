import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsService{
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category})async{
    try{
      var response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&apikey=25efe706ca3842509737e9b183a7a863&category=$category');
      Map<String,dynamic> jsonData=response.data;
      List<dynamic> articles=jsonData['articles'];
      List<ArticleModel> articleModels=[];
      for (var article in articles) {
        // Check for null values before using them
        String? image = article['urlToImage'];
        String? title = article['title'];
        String? subtitle = article['description'];
        String? url=article['url'];
        if (image != null && title != null && subtitle != null&& url != null) {
          ArticleModel articleModel = ArticleModel(image: image, title: title, subtitle: subtitle,url: url);
          articleModels.add(articleModel);
        }
      }
      return articleModels;
    }catch(e){
      return [];
    }
  }

}