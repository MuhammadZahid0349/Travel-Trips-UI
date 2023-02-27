import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel_point/component/map.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/trip.dart';
import 'package:travel_point/view/detail/trip/widgets/photo_gallery.dart';
import 'package:travel_point/view/detail/widgets/detail_body_panel.dart';
import 'package:travel_point/view/detail/widgets/panel.dart';

class TripBodyMobile extends StatefulWidget {
  final Trip trip;

  const TripBodyMobile({
    required this.trip,
    Key? key,
  }) : super(key: key);

  @override
  State<TripBodyMobile> createState() => _TripBodyMobileState();
}

class _TripBodyMobileState extends State<TripBodyMobile> {
  @override
  Widget build(BuildContext context) {
    var favorite = widget.trip.favorite;
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SlidingUpPanel(
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: size.height / 1.5,
          maxHeight: size.height / 1.15,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(18.0),
          ),
          body: DetailBodyPanel(
            photoCover: widget.trip.photoCover,
            height: size.height - (size.height / 1.6),
          ),
          panelBuilder: (sc) => _panel(sc),
        ),
        Positioned(
          top: 50.0,
          left: 4.0,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 50.0,
          right: 0.0,
          child: IconButton(
            onPressed: () {
              setState(() {
                widget.trip.favorite = !favorite;
              });
            },
            icon: Icon(
              widget.trip.favorite ? Icons.bookmark : Icons.bookmark_outline,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _panel(ScrollController sc) {
    return Panel(
      content: ListView(
        controller: sc,
        children: [
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.location_on,
                                size: 14,
                                color: blue,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' ${widget.trip.location.country} - ${widget.trip.location.subRegion}',
                            )
                          ],
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'NunitoSans',
                            color: black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        widget.trip.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      '\$${widget.trip.price.toStringAsFixed(2)}',
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: blue,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    const Text(
                      'Estimated',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'NunitoSans',
                        color: grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            '${widget.trip.date} (${widget.trip.duration})',
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'NunitoSans',
              color: grey,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            'Trip Plan',
            style: TextStyle(
              fontSize: 16,
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
              fontFamily: 'NunitoSans',
              color: grey,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          PhotoGrallery(
            urlPhoto: widget.trip.urlPhoto,
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            'Inclusion',
            style: TextStyle(
              fontSize: 16,
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
                              fontFamily: 'NunitoSans',
                              color: grey,
                            ),
                          ))
                      .toList(),
                ),
          const SizedBox(
            height: 18.0,
          ),
          const Text(
            'Exclusion',
            style: TextStyle(
              fontSize: 16,
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
                              fontFamily: 'NunitoSans',
                              color: grey,
                            ),
                          ))
                      .toList(),
                ),
          const SizedBox(
            height: 18.0,
          ),
          const Text(
            'Location',
            style: TextStyle(
              fontSize: 16,
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
        ],
      ),
    );
  }
}
