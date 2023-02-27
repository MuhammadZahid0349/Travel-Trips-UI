import 'package:flutter/material.dart';
import 'package:travel_point/component/no_data.dart';
import 'package:travel_point/component/small_trip_card.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';

class CategoryBodyWeb extends StatelessWidget {
  final String category;
  final List<Trip> categoryTrip;

  const CategoryBodyWeb({
    required this.category,
    required this.categoryTrip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: lightGrey,
      child: Scrollbar(
        isAlwaysShown: true,
        child: Center(
          child: Container(
            color: Colors.white,
            width: screenWidth <= 1200 ? 800 : 1200,
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: screenWidth <= 1200 ? 32 : 44,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: categoryTrip.isEmpty
                      ? const NoData()
                      : LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                          int gridCout = 0;
                          if (constraints.maxWidth <= 600) {
                            gridCout = 2;
                          } else if (constraints.maxWidth <= 1200) {
                            gridCout = 4;
                          } else {
                            gridCout = 8;
                          }

                          return GridView.count(
                            crossAxisCount: gridCout,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: categoryTrip
                                .map((trip) => SmallTripCard(trip: trip))
                                .toList(),
                          );
                        }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
