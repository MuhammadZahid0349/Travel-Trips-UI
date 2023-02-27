import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_point/component/custom_appbar.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';
import 'package:travel_point/view/category/widgets/category_body_web.dart';

import 'widgets/category_body_mobile.dart';

class CategoryScreen extends StatefulWidget {
  final String category;

  const CategoryScreen({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    List<Trip> categoryTrip = tripList
        .where((element) => element.category == widget.category)
        .toList();

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? CustomAppBar(
                title: Text(
                  widget.category,
                  style: const TextStyle(color: black),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: black,
                  ),
                ),
              )
            : null,
        body: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? CategoryBodyMobile(categoryTrip: categoryTrip)
            : CategoryBodyWeb(
                category: widget.category,
                categoryTrip: categoryTrip,
              ),
      );
    });
  }
}
