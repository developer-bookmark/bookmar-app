import 'package:bookmarking_app/Features/Models/topic.dart';
import 'package:bookmarking_app/Features/Models/bookmark.dart';
import 'package:bookmarking_app/Features/Widgets/bookmark_card.dart';
import 'package:bookmarking_app/Features/Widgets/chip_button.dart';
import 'package:bookmarking_app/Features/Widgets/topic_section.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _textController;

  List<Topic> filters = [
    Topic(title: "Sort"),
    Topic(title: "Unread"),
    Topic(title: "Read Later"),
    Topic(title: "Liked"),
  ];

  List<Bookmark> bookmarks = [
    Bookmark(
      source: "Wired",
      topic: "Crypto",
      title: "After a 10-Year Wait, Mt. Gox Bitcoin Is Finally Being Returned",
      thumbnail: "",
      createdAt: DateTime.now(),
      readingLength: 6,
    ),
    Bookmark(
      source: "Harvard Business Review",
      topic: "Artificial Intelligence",
      title: "How AI Can Change the Way Your Company Gets Work Done",
      thumbnail: "",
      createdAt: DateTime.now(),
      readingLength: 4,
    ),
    Bookmark(
      source: "CNN",
      topic: "Technology",
      title:
          "How to protect yourself from iPhone thieves locking you out of your own device",
      thumbnail: "",
      createdAt: DateTime.now(),
      readingLength: 3,
    )
  ];

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Column(
                      children: [
                        const TopicSection(),
                        const SizedBox(height: 32.0),
                        Column(
                          children: bookmarks.map( 
                          (bookmark) => BookmarkCard( 
                          topic: bookmark.topic,
                          title: bookmark.title,
                          thumbnail: bookmark.thumbnail,
                          createdAt: bookmark.createdAt,
                          readingLength: bookmark.readingLength,
                          onPressed: () {}
                          )
                          ).toList()
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          searchWidget(context)
        ],
      ),
    );
  }

  Widget searchWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
              child: CupertinoTextField(
                placeholder: "Search",
                controller: _textController,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(color: CupertinoColors.systemGrey6),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 40.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (ctx, idx) {
                  return ChipButton(
                    label: filters[idx].title,
                    onPressed: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
