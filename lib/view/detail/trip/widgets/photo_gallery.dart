import 'package:flutter/material.dart';
import 'package:travel_point/component/item_photo.dart';
import 'package:travel_point/model/constants.dart';

class PhotoGrallery extends StatelessWidget {
  final List<String> urlPhoto;

  const PhotoGrallery({
    required this.urlPhoto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Photo Gallery',
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
        SizedBox(
          height: 140.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: urlPhoto.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ItemPhoto(
                  urlPhoto: urlPhoto[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
