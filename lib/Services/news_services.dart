import 'package:dio/dio.dart';
import 'package:news_app/models/results_model.dart';

class NewsServices {
  NewsServices({required this.dio});
  final Dio dio;
  Future<List<ResultsModel>> getNews({required String category}) async {
    Response response = await dio.get(
      'https://newsdata.io/api/1/latest?apikey=pub_83828e86c6b66af0dac4805fff6c562165c49&category=$category&country=eg',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['results'];
    List<ResultsModel> resultsList = [];
    for (var result in results) { 
    ResultsModel resultsModel = ResultsModel.fromJson(result);
    resultsList.add(resultsModel);
}

    return resultsList;
  } // Use the variable by printing it
}

// here we convert the map to object  

// first i have jsonData have all the data of the response and we know that the data of type map

// then we make a list of the results and this list of type dynamic and it will show all the result of json data 

// then we create an empty list called resultList of type ResultModel that we create it already

// then we make for in loop where each result in results we will make this command 

//  ResultsModel resultsModel =ResultsModel(image: result['image_url'], title: result['title'], description: result['description']);
//        resultsList.add(resultsModel);

// this command we create object from ResultModel and we put the result[ 'image url'] to the attribute image 

// and result ['title]to the attribute title and same in description 

// *here we convert the map to object and we get the data to this object so we can use the object by the data we get it in out application 

// *سهلة جدا محتاجة بس تركيز وافهم خطوة خطوة وحوار المابات ده سهل جدا انت علشان في الاول فهتكون مستصعبها شويتين

//  Map<String, dynamic> jsonData = response.data;
//     List<dynamic> results = jsonData['results'];
//      List<ResultsModel>resultsList=[];
//      for (var result in results) {
//       ResultsModel resultsModel =ResultsModel(image: result['image_url'], title: result['title'], description: result['description']);
//        resultsList.add(resultsModel);
//      }
//     } 