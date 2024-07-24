import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class BookmarkCard extends StatelessWidget {
  const BookmarkCard(
      {required this.topic,
      required this.title,
      required this.thumbnail,
      required this.createdAt,
      required this.readingLength,
      required this.onPressed,
      super.key});

  final String topic;
  final String title;
  final String thumbnail;
  final DateTime createdAt;
  final int readingLength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MMMM dd').format(createdAt);

    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        border: Border.all(color: CupertinoColors.systemGrey6),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: CupertinoColors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.tag,
                          size: 16,
                          color: CupertinoColors.systemGrey,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          topic,
                          style: const TextStyle(
                            fontSize: 12,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '$formattedDate • $readingLength min read',
                      style: const TextStyle(
                        fontSize: 12,
                        color: CupertinoColors.systemGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              child: Image.network(
                'https://placehold.co/90x120/png', // Replace with your image URL
                height: 120,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
