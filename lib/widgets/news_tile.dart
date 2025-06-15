import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Screens/web_view.dart';
import 'package:news_app/models/results_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.resultsModel});
  final ResultsModel resultsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return WebView(link: resultsModel.link);
                  },
                ),
              );
            },
            child: CachedNetworkImage(
              imageUrl:
                  resultsModel.image ?? "http://via.placeholder.com/350x150",
              placeholder:
                  (context, url) => SizedBox(
                    height: 200,
                    child: Center(child: CircularProgressIndicator()),
                  ),
              errorWidget:
                  (context, url, error) => SizedBox(
                    height: 200,
                    child: Center(child: Icon(Icons.error)),
                  ),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          resultsModel.title ?? 'sorry there is an error',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 1),
        Text(
          resultsModel.description ?? 'sorry there is an error',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
