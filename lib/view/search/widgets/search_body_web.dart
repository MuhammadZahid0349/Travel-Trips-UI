import 'package:flutter/material.dart';
import 'package:travel_point/component/no_data.dart';
import 'package:travel_point/component/search_textfield.dart';
import 'package:travel_point/component/small_trip_card.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';

class SearchBodyWeb extends StatefulWidget {
  const SearchBodyWeb({Key? key}) : super(key: key);

  @override
  State<SearchBodyWeb> createState() => _SearchBodyWebState();
}

class _SearchBodyWebState extends State<SearchBodyWeb> {
  List<Trip> searchResult = [];

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
                const Text(
                  'Search Trip',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: Column(
                    children: [
                      SearchTextField(
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
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: searchResult.isEmpty
                              ? const NoData()
                              : LayoutBuilder(builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                  int gridCout = 0;
                                  if (constraints.maxWidth <= 600) {
                                    gridCout = 2;
                                  } else if (constraints.maxWidth <= 1200) {
                                    gridCout = 4;
                                  } else {
                                    gridCout = 6;
                                  }

                                  return GridView.count(
                                    crossAxisCount: gridCout,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8,
                                    children: searchResult
                                        .map(
                                            (trip) => SmallTripCard(trip: trip))
                                        .toList(),
                                  );
                                }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
