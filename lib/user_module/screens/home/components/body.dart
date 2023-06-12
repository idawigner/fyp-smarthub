import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smarthub/constant.dart';
import 'package:smarthub/user_module/screens/components/Search_box.dart';
import 'package:smarthub/user_module/screens/home/components/category_item.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryItem(title: "Food stores", isActive: true, press: () {}),
              CategoryItem(title: "Grocery stores", press: () {}),
              CategoryItem(title: "Medical stores", press: () {}),
            ],
          ),
        )
      ],
    );
  }
}
