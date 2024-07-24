import 'package:bookmarking_app/Features/Widgets/bookmark_card.dart';
import 'package:bookmarking_app/Features/Widgets/topic_section.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.white,
            largeTitle: Text(
              "Your Bookmark",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  const TopicSection(),
                  const SizedBox(height: 32.0),
                  Column(
                    children: [
                      BookmarkCard(
                        topic: "Crypto",
                        title:
                            "After a 10-Year Wait, Mt. Gox Bitcoin Is Finally Being Returned",
                        thumbnail: "",
                        createdAt: DateTime.now(),
                        readingLength: 6,
                        onPressed: () {},
                      ),
                      BookmarkCard(
                        topic: "Artificial Intelligence",
                        title:
                            "How AI Can Change the Way Your Company Gets Work Done",
                        thumbnail: "",
                        createdAt: DateTime.now(),
                        readingLength: 4,
                        onPressed: () {},
                      ),
                      BookmarkCard(
                        topic: "Technology",
                        title:
                            "How to protect yourself from iPhone thieves locking you out of your own device",
                        thumbnail: "",
                        createdAt: DateTime.now(),
                        readingLength: 3,
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
