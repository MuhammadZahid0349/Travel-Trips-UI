import 'package:flutter/material.dart';
import 'package:travel_point/component/map.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';

class TripBodyWeb extends StatefulWidget {
  final Trip trip;

  const TripBodyWeb({
    required this.trip,
    Key? key,
  }) : super(key: key);

  @override
  _TripBodyWebState createState() => _TripBodyWebState();
}

class _TripBodyWebState extends State<TripBodyWeb> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var favorite = widget.trip.favorite;
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
            child: ListView(
              children: [
                Text(
                  '${widget.trip.location.location}, ${widget.trip.location.country}',
                  style: const TextStyle(
                    fontSize: 28,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Hero(
                            tag: widget.trip.photoCover,
                            child: ClipRRect(
                              child: Image.asset(
                                widget.trip.photoCover,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.trip.urlPhoto.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.trip.name,
                            style: const TextStyle(
                              fontSize: 28,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.location_on,
                                    size: 20,
                                    color: blue,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' ${widget.trip.location.country} - ${widget.trip.location.subRegion}',
                                )
                              ],
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'NunitoSans',
                                color: black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                              const Text(
                                ': ',
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  widget.trip.date,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  'Duration',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                              const Text(
                                ': ',
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  widget.trip.duration,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  'Category',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                              const Text(
                                ': ',
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  widget.trip.category,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  'Price',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                              const Text(
                                ': ',
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  '\$${widget.trip.price.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'NunitoSans',
                                    color: black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          widget.trip.favorite
                              ? TextButton(
                                  style: TextButton.styleFrom(
                                    minimumSize: const Size.fromHeight(40.0),
                                    backgroundColor: blue,
                                    primary: Colors.white,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      widget.trip.favorite = !favorite;
                                    });
                                  },
                                  child: const Text('Favorited'),
                                )
                              : OutlinedButton(
                                  style: TextButton.styleFrom(
                                    minimumSize: const Size.fromHeight(40.0),
                                    backgroundColor: Colors.white,
                                    primary: blue,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    side: const BorderSide(color: blue),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      widget.trip.favorite = !favorite;
                                    });
                                  },
                                  child: const Text('Favorite'),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  'Trip Plan',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  widget.trip.tripPlan,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'NunitoSans',
                    color: grey,
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  'Inclusion',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                widget.trip.inclusion.isEmpty
                    ? const Text(
                        'No Inclusion',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'NunitoSans',
                          color: grey,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.trip.inclusion
                            .map((inclusion) => Text(
                                  '- $inclusion',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'NunitoSans',
                                    color: grey,
                                  ),
                                ))
                            .toList(),
                      ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  'Exclusion',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                widget.trip.exclusion.isEmpty
                    ? const Text(
                        'No Exclusion',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'NunitoSans',
                          color: grey,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.trip.exclusion
                            .map((exclusion) => Text(
                                  '- $exclusion',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'NunitoSans',
                                    color: grey,
                                  ),
                                ))
                            .toList(),
                      ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                MapC(
                  location: widget.trip.location,
                  zoom: 18.0,
                ),
                const SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
