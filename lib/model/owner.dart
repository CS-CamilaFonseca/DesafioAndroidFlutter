class Owner {
  final String login;
  final String avatar;

  Owner({
    this.login,
    this.avatar,
  });

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(
      login: json['login'] as String,
      avatar: json['avatar_url'] as String,
    );
  }
}
