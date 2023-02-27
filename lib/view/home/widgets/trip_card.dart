import 'package:flutter/material.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';
import 'package:travel_point/view/detail/trip/detail_trip_screen.dart';

class TripCard extends StatefulWidget {
  final Trip trip;

  const TripCard({
    required this.trip,
    Key? key,
  }) : super(key: key);

  @override
  _TripCardState createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  @override
  Widget build(BuildContext context) {
    var favorite = widget.trip.favorite;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 10,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailTripScreen(
              trip: widget.trip,
            );
          }));
        },
        borderRadius: BorderRadius.circular(16.0),
        child: SizedBox(
          width: 220,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: widget.trip.photoCover,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        widget.trip.photoCover,
                        fit: BoxFit.cover,
                        height: 140,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      splashRadius: 10,
                      onPressed: () {
                        setState(() {
                          widget.trip.favorite = !favorite;
                        });
                      },
                      icon: Icon(
                        widget.trip.favorite
                            ? Icons.bookmark
                            : Icons.bookmark_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.trip.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                          Text(
                            widget.trip.location.subRegion,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: 'NunitoSans',
                              color: grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.star,
                                size: 14,
                                color: yellow,
                              ),
                            ),
                            TextSpan(
                              text: ' ${widget.trip.rating.toStringAsFixed(1)}',
                            )
                          ],
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'NunitoSans',
                            color: yellow,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
