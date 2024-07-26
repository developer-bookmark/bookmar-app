class Bookmark {
  String source;
  String topic;
  String title;
  String thumbnail;
  DateTime createdAt;
  int readingLength;

  Bookmark(
      {required this.source,
      required this.topic,
      required this.title,
      required this.thumbnail,
      required this.createdAt,
      required this.readingLength});
}
