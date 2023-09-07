import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.articleModel}) : super(key: key);
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        launchUrlString('${articleModel.url}');
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child:articleModel.image.isNotEmpty?Image.network(
              articleModel.image,
              fit: BoxFit.fill,
              width: double.infinity,
              height: 250,
            ):
            Image.network(
              'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg',
              fit: BoxFit.fill,
              width: double.infinity,
              height: 250,
            )
          ),
          const SizedBox(
            height: 10.0,
          ),
           Text(
           articleModel.title,
            style:const  TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10.0,
          ),
           Text(
           articleModel.subtitle,
            style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
