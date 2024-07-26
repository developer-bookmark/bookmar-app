import 'package:bookmarking_app/Features/Models/topic.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookmarking_app/Features/Widgets/chip_button.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Topic> firstTopics = [
      Topic(title: 'Artificial Intelligence'),
      Topic(title: 'Art'),
      Topic(title: 'Music'),
      Topic(title: 'Reading'),
    ];

    List<Topic> secondTopics = [
      Topic(title: 'Bussiness'),
      Topic(title: 'Collection'),
      Topic(title: 'Internet'),
      Topic(title: 'Technology'),
    ];

    List<Topic> thirdTopics = [
      Topic(title: 'History'),
      Topic(title: 'Pop Culture'),
      Topic(title: 'Hobby'),
      Topic(title: 'Development'),
    ];

    void onPress() {
      print('Chip Button Pressed');
    }

    return Column(children: [
      SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: firstTopics.length,
          itemBuilder: (ctx, idx) {
            return ChipButton(
              label: firstTopics[idx].title,
              onPressed: onPress,
            );
          },
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: secondTopics.length,
          itemBuilder: (ctx, idx) {
            return ChipButton(
              label: secondTopics[idx].title,
              onPressed: onPress,
            );
          },
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: thirdTopics.length,
          itemBuilder: (ctx, idx) {
            return ChipButton(
              label: thirdTopics[idx].title,
              onPressed: onPress,
            );
          },
        ),
      )
    ]);
  }
}
