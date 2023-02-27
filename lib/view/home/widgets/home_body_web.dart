import 'package:flutter/material.dart';
import 'package:travel_point/component/on_hover.dart';
import 'package:travel_point/component/search_textfield.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/view/favorite/favorite_screen.dart';
import 'package:travel_point/view/home/widgets/category_trip.dart';
import 'package:travel_point/view/home/widgets/package_trip.dart';
import 'package:travel_point/view/home/widgets/posting_knowlage.dart';
import 'package:travel_point/view/search/search_screen.dart';

class HomeBodyWeb extends StatelessWidget {
  const HomeBodyWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Good Evening',
                              style: TextStyle(
                                fontFamily: 'NunitoSans',
                                color: grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 2.0),
                            child: Text(
                              'Explore the world',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: OnHover(
                            builder: ((isHovered) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const FavoriteScreen();
                                  }));
                                },
                                child: Text(
                                  'FAVORITE',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: isHovered ? blue : black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SearchTextField(
                    readOnly: true,
                    autoFocus: false,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
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
        ),
      ),
    );
  }
}
