import 'package:flutter/material.dart';
import 'package:travel_point/model/category.dart';
import 'package:travel_point/model/constants.dart';
import 'package:travel_point/view/category/category_screen.dart';

class CategoryTrip extends StatefulWidget {
  const CategoryTrip({Key? key}) : super(key: key);

  @override
  State<CategoryTrip> createState() => _CategoryTripState();
}

class _CategoryTripState extends State<CategoryTrip> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 2.0),
          child: Text(
            'Explore Category',
            style: TextStyle(
              fontFamily: 'NunitoSans',
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 0.0,
                  right: 16.0,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CategoryScreen(
                        category: category[index].name,
                      );
                    }));
                  },
                  child: _itemCategory(
                    category: category[index],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _itemCategory({
    required Category category,
  }) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: grey),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            category.icon,
            width: 50,
          ),
          const SizedBox(height: 8),
          Text(category.name),
        ],
      ),
    );
  }
}
