import 'package:flutter/material.dart';
import 'package:travel_point/model/constants.dart';

class NoData extends StatelessWidget {
  const NoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 16,
        ),
        Image.asset(
          'images/empty.png',
          height: 120,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'No Data',
          style: TextStyle(
            fontFamily: 'NunitoSans',
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ],
    );
  }
}
