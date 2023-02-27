import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_point/model/knowlage_city.dart';
import 'package:travel_point/view/detail/knowlage/widgets/knowlage_body_mobile.dart';
import 'package:travel_point/view/detail/knowlage/widgets/knowlage_body_web.dart';

class DetailKnowlageScreen extends StatefulWidget {
  final KnowlageCity knowlageCity;

  const DetailKnowlageScreen({
    required this.knowlageCity,
    Key? key,
  }) : super(key: key);

  @override
  _DetailKnowlageScreenState createState() => _DetailKnowlageScreenState();
}

class _DetailKnowlageScreenState extends State<DetailKnowlageScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? KnowlageBodyMobile(knowlageCity: widget.knowlageCity)
            : KnowlageBodyWeb(knowlageCity: widget.knowlageCity),
      );
    });
  }
}
