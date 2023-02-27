import 'package:flutter/material.dart';
import 'package:travel_point/component/no_data.dart';
import 'package:travel_point/component/small_trip_card.dart';
import 'package:travel_point/model/trip.dart';

class FavoriteBodyMobile extends StatelessWidget {
  final List<Trip> favoriteTrip;

  const FavoriteBodyMobile({
    required this.favoriteTrip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: favoriteTrip.isEmpty
          ? const NoData()
          : GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: favoriteTrip
                  .map((trip) => SmallTripCard(trip: trip))
                  .toList(),
            ),
    );
  }
}
