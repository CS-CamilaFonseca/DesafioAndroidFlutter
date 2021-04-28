import 'dart:io';
import 'package:desafio_android_flutter/model/repository.dart';
import 'package:dio/dio.dart';

class GitHubService {
  final Dio dio = Dio();

  Future<Repository> repository(int page) async {
    try {
      Response response = await dio.get(
          "https://api.github.com/search/repositories?q=language:Java&sort=stars&page=${page}");
      return Repository.fromJson(response.data);
    } catch (error) {
      throw SocketException(error);
    }
  }
}
