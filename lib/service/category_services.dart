import 'dart:convert';

import 'package:food_reciepe/model/model.dart';

import 'package:http/http.dart' as http;

const url = 'themealdb.com';

class Services {
  Future<List<CategoryModel>> fetchCategory() async {
    final uri = Uri.https(url, '/api/json/v1/1/categories.php');
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      Map body = jsonDecode(response.body);
      List<dynamic> category = body['categories'];

      return category.map((e) => CategoryModel.fromJson(e)).toList();
    } else {
      throw Exception('something wrong');
    }
  }

  Future<List<SearchModel>> fetchCategorySearch(search) async {
    try {
      final catProductQuery = {
        's': search,
      };

      final uri = Uri.https(url, '/api/json/v1/1/search.php', catProductQuery);

      http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        Map body = jsonDecode(response.body);
        List<dynamic> catProduct = body['meals'];

        return catProduct.map((e) => SearchModel.fromJson(e)).toList();
      } else {
        throw Exception("somethingg error");
      }
    } catch (e) {
      throw Exception("somethingg error");
    }
  }

  Future<RecipeDetailModel> fetchDetail(id) async {
    try {
      final catProductQuery = {
        'i': id,
      };

      final uri = Uri.https(url, '/api/json/v1/1/lookup.php', catProductQuery);

      http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);

        return RecipeDetailModel.fromJson(body);
      } else {
        throw Exception("somethingg erroe");
      }
    } catch (e) {
      throw Exception("somethingg erroe");
    }

    // final catProductQuery = {
    //   'i': id,
    // };
    // final uri = Uri.https(url, '/api/json/v1/1/lookup.php', catProductQuery);

    // http.Response response = await http.get(uri);

    // if (response.statusCode == 200) {
    //   var body = jsonDecode(response.body);
    //   print(uri);
    //   return RecipeDetailModel.fromJson(body);
    // } else {
    //   throw Exception("something error");
    // }
  }
}
