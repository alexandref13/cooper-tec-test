import 'package:dio/dio.dart';

class CustomDio {
  // NOTE -> Para escabilidade eu uso  o BaseUrl para nao precisar repetições desnecessárias de codigo

  Dio dio = Dio(BaseOptions(
    baseUrl: 'https://www.googleapis.com/books/v1',
    connectTimeout: 5000,
  ));
}
