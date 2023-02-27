import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_point/component/custom_appbar.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/view/search/widgets/search_body_mobile.dart';
import 'package:travel_point/view/search/widgets/search_body_web.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? CustomAppBar(
                title: const Text(
                  'Search Trip',
                  style: TextStyle(color: black),
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
            ? const SearchBodyMobile()
            : const SearchBodyWeb(),
      );
    });
  }
}
