import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/news_services.dart';
import 'package:news_app/models/results_model.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  NewsListViewBuilder({required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices(dio: Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ResultsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(results: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(height:200,child: Center(child: Text('OOps there is an error try again later'))),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
