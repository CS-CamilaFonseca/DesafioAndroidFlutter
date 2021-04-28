class Repositories {
  final List<Repositories>items;

  Repositories (
      this.items
      );

  factory Repositories.fromJson(Map<String, dynamic> json) {
    final listItems = (json['items'] as List).cast<Map<String, dynamic>>()?.map((items) {
      return Repositories.fromJson(items);
    },

    )?.toList();

    return Repositories(listItems);
  }

}