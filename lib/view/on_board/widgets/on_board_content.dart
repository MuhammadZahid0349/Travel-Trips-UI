import 'package:flutter/material.dart';
import 'package:travel_point/model/on_board.dart';

class OnBoardContent extends StatelessWidget {
  final OnBoard onBoard;

  const OnBoardContent({required this.onBoard, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          onBoard.image,
          width: 240,
        ),
        const SizedBox(height: 24),
        Text(
          onBoard.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Text(
            onBoard.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'NunitoSans',
            ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
