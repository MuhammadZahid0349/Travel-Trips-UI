import 'package:flutter/material.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';
import 'package:travel_point/view/detail/trip/detail_trip_screen.dart';

class SmallTripCard extends StatefulWidget {
  final Trip trip;

  const SmallTripCard({
    required this.trip,
    Key? key,
  }) : super(key: key);

  @override
  _SmallTripCardState createState() => _SmallTripCardState();
}

class _SmallTripCardState extends State<SmallTripCard> {
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
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: widget.trip.photoCover,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    widget.trip.photoCover,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: black.withOpacity(0.2),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.trip.location.subRegion,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'NunitoSans',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
