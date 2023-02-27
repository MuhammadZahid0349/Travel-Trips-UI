import 'package:flutter/material.dart';
import 'package:travel_point/model/constants.dart';

class SearchTextField extends StatefulWidget {
  final bool readOnly;
  final bool autoFocus;
  final Function()? onTap;
  final Function(String)? onChanged;

  const SearchTextField({
    required this.readOnly,
    required this.autoFocus,
    this.onTap,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        readOnly: widget.readOnly,
        autofocus: widget.autoFocus,
        onTap: widget.onTap,
        onChanged: widget.onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Where are you going?",
          prefixIcon: Icon(
            Icons.search,
            color: grey,
          ),
        ),
      ),
    );
  }
}
