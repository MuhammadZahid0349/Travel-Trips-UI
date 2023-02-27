import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/model/knowlage_city.dart';
import 'package:travel_point/view/detail/knowlage/detail_knowlage_screen.dart';

class PostingKnowlage extends StatelessWidget {
  const PostingKnowlage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 2.0),
          child: Text(
            'Know Your World',
            style: TextStyle(
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 2.0),
          child: Text(
            'Grow your world knowledge',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'NunitoSans',
              color: grey,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: double.infinity,
          height: 180,
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            double aspectRatio = 0.0;
            if ((defaultTargetPlatform == TargetPlatform.android ||
                    defaultTargetPlatform == TargetPlatform.iOS) ||
                (constraints.maxWidth <= 500)) {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height);
            } else if (constraints.maxWidth <= 600) {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.6);
            } else if (constraints.maxWidth <= 800) {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.4);
            } else {
              aspectRatio = MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.15);
            }

            return GridView.builder(
              itemCount: knowlageCityList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: aspectRatio,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index < 2 ? 16.0 : 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailKnowlageScreen(
                          knowlageCity: knowlageCityList[index],
                        );
                      }));
                    },
                    child: _itemPosting(
                      knowlageCity: knowlageCityList[index],
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }

  Widget _itemPosting({
    required KnowlageCity knowlageCity,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 56,
          height: 56,
          child: Hero(
            tag: knowlageCity.photoCover,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                knowlageCity.photoCover,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                knowlageCity.title,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                  color: grey,
                ),
              ),
              Text(
                knowlageCity.subTitle,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'NunitoSans',
                  color: grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
