import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_point/model/trip.dart';
import 'package:travel_point/view/detail/trip/widgets/trip_body_mobile.dart';
import 'package:travel_point/view/detail/trip/widgets/trip_body_web.dart';

class DetailTripScreen extends StatefulWidget {
  final Trip trip;

  const DetailTripScreen({
    required this.trip,
    Key? key,
  }) : super(key: key);

  @override
  _DetailTripScreenState createState() => _DetailTripScreenState();
}

class _DetailTripScreenState extends State<DetailTripScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 600))
            ? TripBodyMobile(trip: widget.trip)
            : TripBodyWeb(trip: widget.trip),
      );
    });
  }
}
