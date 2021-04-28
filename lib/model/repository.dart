import 'package:desafio_android_flutter/model/owner.dart';

class Repository {
  final String name;
  final String description;
  final int forks;
  final int stars;
  final String fullName;
  Owner owner;
  final int pages;

  Repository({
    this.name,
    this.description,
    this.forks,
    this.stars,
    this.fullName,
    this.owner,
    this.pages,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      name: json["name"] as String,
      description: json["description"] as String,
      forks: json["forks_count"] as int,
      stars: json['stargazers_count'] as int,
      fullName: json["full_name"] as String,
      owner: json['owner'] as Owner,
      pages: json['pages'] as int,
    );
  }
}
