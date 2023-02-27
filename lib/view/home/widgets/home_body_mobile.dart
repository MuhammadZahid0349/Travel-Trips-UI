import 'package:flutter/material.dart';
import 'package:travel_point/component/search_textfield.dart';
import 'package:travel_point/view/home/widgets/category_trip.dart';
import 'package:travel_point/view/home/widgets/package_trip.dart';
import 'package:travel_point/view/home/widgets/posting_knowlage.dart';
import 'package:travel_point/view/search/search_screen.dart';

class HomeBodyMobile extends StatelessWidget {
  const HomeBodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchTextField(
                readOnly: true,
                autoFocus: false,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SearchScreen();
                  }));
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const PackageTrip(),
            const SizedBox(
              height: 12,
            ),
            const CategoryTrip(),
            const SizedBox(
              height: 32,
            ),
            const PostingKnowlage(),
          ],
        ),
      ),
    );
  }
}
