import 'package:bookmarking_app/Features/Widgets/chip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var chipTexts = ['Artificial Intelligence', 'Art', 'Music', 'Business'];
  var chipTexts2 = ['Collection', 'Internet', 'Technology', 'Reading'];
  var chipTexts3 = ['History', 'Pop Culture', 'Hobby', 'Development'];

  void _onPress() {
    print('Chip Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Your Bookmark"),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: chipTexts.length,
                      itemBuilder: (ctx, idx) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ChipButton(
                            label: chipTexts[idx],
                            onPressed: _onPress,
                          ),
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
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ChipButton(
                            label: chipTexts2[idx],
                            onPressed: _onPress,
                          ),
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
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ChipButton(
                            label: chipTexts3[idx],
                            onPressed: _onPress,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
