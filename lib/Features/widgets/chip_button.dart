import 'package:flutter/cupertino.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({required this.label, required this.onPressed, super.key});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 17.5, vertical: 7.0),
      decoration: BoxDecoration(
        color: const Color(0x00f2f2f2),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: CupertinoColors.systemGrey4),
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        minSize: 0,
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            color: CupertinoColors.black,
          ),
        ),
      ),
    );
  }
}
