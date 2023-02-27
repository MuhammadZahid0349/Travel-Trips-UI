import 'package:flutter/material.dart';

class DetailBodyPanel extends StatelessWidget {
  final String photoCover;
  final double height;

  const DetailBodyPanel({
    required this.photoCover,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Hero(
        tag: photoCover,
        child: Image.asset(
          photoCover,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
