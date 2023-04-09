import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final String text;
  final String text2;
  final IconData icon;
  final double xOffset;
  final double yOffset;

  const NewWidget({
    super.key,
    required this.text,
    required this.text2,
    required this.icon,
    required this.xOffset,
    required this.yOffset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [Text(text), Text(text2)],
          ),
          Transform.scale(
            scale: 3,
            child: Transform.translate(
              offset: Offset(xOffset, yOffset),
              child: Icon(
                icon,
                color: Colors.white.withOpacity(0.9),
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
