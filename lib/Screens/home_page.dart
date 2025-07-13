import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.red)),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: CategoriesListView()), 
          SliverToBoxAdapter(child:SizedBox(height:35),),
         NewsListViewBuilder(category: 'business',),
        ],
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 13.5),
      //   child: Column(
      //     children: [
      //       CategoriesListView(),
      //       SizedBox(height:35),
      //       Expanded(child: NewsListView())
      //     ],
    );
  }
}


