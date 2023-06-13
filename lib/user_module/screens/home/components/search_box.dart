import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarthub/constant.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged onChanged;
  const SearchBox({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: secondaryColor.withOpacity(0.32))),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search Here",
            hintStyle: const TextStyle(fontSize: 18.0, color: secondaryColor),
          ),
        ),
      ),
    );
  }
}
