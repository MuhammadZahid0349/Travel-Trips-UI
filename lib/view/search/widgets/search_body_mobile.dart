import 'package:flutter/material.dart';
import 'package:travel_point/component/no_data.dart';
import 'package:travel_point/component/search_textfield.dart';
import 'package:travel_point/component/small_trip_card.dart';
import 'package:travel_point/model/trip.dart';

class SearchBodyMobile extends StatefulWidget {
  const SearchBodyMobile({Key? key}) : super(key: key);

  @override
  State<SearchBodyMobile> createState() => _SearchBodyMobileState();
}

class _SearchBodyMobileState extends State<SearchBodyMobile> {
  List<Trip> searchResult = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SearchTextField(
              readOnly: false,
              autoFocus: true,
              onChanged: (text) {
                setState(() {
                  if (text.isNotEmpty) {
                    searchResult = tripList
                        .where((element) => element.name
                            .toLowerCase()
                            .contains(text.toLowerCase()))
                        .toList();
                  } else {
                    searchResult = [];
                  }
                });
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: searchResult.isEmpty
                  ? const NoData()
                  : GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: searchResult
                          .map((trip) => SmallTripCard(trip: trip))
                          .toList(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
