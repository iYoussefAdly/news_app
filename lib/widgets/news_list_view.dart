import 'package:flutter/material.dart';
import 'package:news_app/models/results_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ResultsModel> results;
  NewsListView({super.key, required this.results});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: results.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: NewsTile(resultsModel: results[index]),
        ),
      ),
    );
  }
}
