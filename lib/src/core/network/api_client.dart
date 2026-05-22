import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;
  ApiClient(this._dio);

  Future<dynamic> get(String url) async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } catch (e) {
      throw Exception("Failed to load data: $e");
    }
  }

  Future<dynamic> post(String url, {dynamic data}) async {
    try {
      final response = await _dio.post(url, data: data);
      return response.data;
    } catch (e) {
      throw Exception("Failed to save data: $e");
    }
  }

  Future<dynamic> put(String url, {dynamic data}) async {
    try {
      final response = await _dio.put(url, data: data);
      return response.data;
    } catch (e) {
      throw Exception("Failed to update data: $e");
    }
  }

  Future<dynamic> delete(String url) async {
    try {
      final response = await _dio.delete(url);
      return response.data;
    } catch (e) {
      throw Exception("Failed to delete data: $e");
    }
  }
}
