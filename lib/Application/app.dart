import 'package:bookmarking_app/Features/Common/Views/homepage.dart';
import 'package:flutter/cupertino.dart';

class BookmarkApp extends StatelessWidget {
  const BookmarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: MyHomePage(),
    );
  }
}
