import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/location.dart';

class MapC extends StatefulWidget {
  final Location location;
  final double zoom;

  const MapC({
    required this.location,
    required this.zoom,
    Key? key,
  }) : super(key: key);

  @override
  State<MapC> createState() => _MapCState();
}

class _MapCState extends State<MapC> {
  var popupInfoWindow = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: FlutterMap(
          options: MapOptions(
            center: LatLng(widget.location.latitude, widget.location.longitude),
            zoom: widget.zoom,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png"),
            MarkerLayerOptions(
              markers: [
                Marker(
                  point: LatLng(
                      widget.location.latitude, widget.location.longitude),
                  builder: (ctx) => IconButton(
                    onPressed: () {
                      setState(() {
                        popupInfoWindow = true;
                      });
                    },
                    icon: const Icon(
                      Icons.location_on,
                      color: blue,
                      size: 48.0,
                    ),
                  ),
                  height: 60,
                ),
                if (popupInfoWindow)
                  Marker(
                    point: LatLng(
                        widget.location.latitude, widget.location.longitude),
                    builder: (ctx) => GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        setState(() {
                          popupInfoWindow = false;
                        });
                      }, // remove the popup if we click on it
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.location.address,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'NunitoSans',
                              color: black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    width: 140,
                    height: 60,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
