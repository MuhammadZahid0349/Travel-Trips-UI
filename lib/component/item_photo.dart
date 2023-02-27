import 'package:flutter/material.dart';

class ItemPhoto extends StatelessWidget {
  final String urlPhoto;

  const ItemPhoto({
    required this.urlPhoto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      child: Image.network(
        urlPhoto,
        fit: BoxFit.cover,
        width: 160.0,
        height: 140.0,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 160.0,
            height: 140.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.grey[300],
            ),
            child: const Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      ),
    );
  }
}
