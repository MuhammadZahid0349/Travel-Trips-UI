import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final Widget content;

  const Panel({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: content,
      ),
    );
  }
}
