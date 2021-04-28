class PullRequest {
  final String title;
  final String date; // created_at
  final String user;
  final String html;
  final String body;
  final String login;
  final String openIssues;

  PullRequest({
    this.title,
    this.date,
    this.user,
    this.html,
    this.body,
    this.login,
    this.openIssues,
  });

  factory PullRequest.fromJson(Map<String, dynamic> json) {
    return PullRequest(
      title: json['title'] as String,
      date: json['created_at'] as String,
      user: json['user'] as String,
      html: json['html_url'] as String,
      body: json['body'] as String,
      login: json['login'] as String,
      openIssues: json['open_issues'] as String,
    );
  }
}
