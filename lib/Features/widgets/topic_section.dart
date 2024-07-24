import 'package:flutter/cupertino.dart';
import 'package:bookmarking_app/Features/Widgets/chip_button.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    var chipTexts = ['Artificial Intelligence', 'Art', 'Music', 'Business'];
    var chipTexts2 = ['Collection', 'Internet', 'Technology', 'Reading'];
    var chipTexts3 = ['History', 'Pop Culture', 'Hobby', 'Development'];

    void onPress() {
      print('Chip Button Pressed');
    }

    return Column(children: [
      SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: chipTexts.length,
          itemBuilder: (ctx, idx) {
            return ChipButton(
              label: chipTexts[idx],
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
          itemCount: chipTexts2.length,
          itemBuilder: (ctx, idx) {
            return ChipButton(
              label: chipTexts2[idx],
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
          itemCount: chipTexts3.length,
          itemBuilder: (ctx, idx) {
            return ChipButton(
              label: chipTexts3[idx],
              onPressed: onPress,
            );
          },
        ),
      )
    ]);
  }
}
