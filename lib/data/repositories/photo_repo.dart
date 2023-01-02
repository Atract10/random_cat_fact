// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:dio/dio.dart';
import 'package:random_cat_fact/data/models/api_models/photo_model.dart';

class PhotoRepo {
  final apiClient = Dio();
  var url = 'https://api.thecatapi.com/v1/images/search';

  Future<String> getPhoto() async {
    try {
      final request = await apiClient.get(url);
      final json = request.data as List<dynamic>;
      final data = PhotoModel.fromJson(json.first);
      return data.url;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
