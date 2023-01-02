// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:random_cat_fact/data/models/api_models/fact_model.dart';


class FactRepo {
  final apiClient = Dio();
  var url = 'https://catfact.ninja/fact';

  Future<String> getFact() async {
    try {
      final request = await apiClient.get(url);
      final json = request.data;
      final data = FactModel.fromJson(json);
      return data.fact;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
