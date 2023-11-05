import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Api {
  static final _dio = Dio();
  static final String _backendHost = dotenv.get("BACKEND_HOST");

  static Future<Response> post({
    required String path,
    Map<String, String>? formData,
  }) async {
    final response = await _dio.post(
      "$_backendHost/$path",
      data: formData,
    );

    return response;
  }
}
