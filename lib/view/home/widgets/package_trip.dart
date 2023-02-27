import 'package:flutter/material.dart';
import 'package:travel_point/component/no_data.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';
import 'package:travel_point/view/home/widgets/trip_card.dart';

class PackageTrip extends StatefulWidget {
  const PackageTrip({Key? key}) : super(key: key);

  @override
  _PackageTripState createState() => _PackageTripState();
}

class _PackageTripState extends State<PackageTrip> {
  List<String> packageTrip = ["All", "Asia", "Europe", "America", "Ocenia"];
  int selectedIndex = 0;

  List<Trip> tripListFiltered = tripList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 2.0),
          child: Text(
            'Exclusive Package',
            style: TextStyle(
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 30,
          child: ListView.builder(
            itemCount: packageTrip.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => _packageItem(index: index),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 230,
          child: tripListFiltered.isEmpty
              ? const Center(child: NoData())
              : ListView.builder(
                  itemCount: tripListFiltered.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 220,
                      height: 210,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 16.0 : 0.0,
                          right: 16.0,
                        ),
                        child: TripCard(trip: tripListFiltered[index]),
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  Widget _packageItem({required int index}) {
    return GestureDetector(
      onTap: () => setState(() {
        selectedIndex = index;

        if (packageTrip[index] == 'All') {
          tripListFiltered = tripList;
        } else {
          tripListFiltered = tripList
              .where((element) => element.location.region == packageTrip[index])
              .toList();
        }
      }),
      child: Container(
        margin: const EdgeInsets.only(left: 16.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index ? blue : Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(
            packageTrip[index],
            style: TextStyle(
              fontFamily: 'NunitoSans',
              color: selectedIndex == index ? Colors.white : black,
            ),
          ),
        ),
      ),
    );
  }
}
