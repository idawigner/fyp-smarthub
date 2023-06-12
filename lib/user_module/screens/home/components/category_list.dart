import 'package:flutter/material.dart';
import 'package:smarthub/user_module/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(title: "Food stores", isActive: true, press: () {}),
          CategoryItem(title: "Grocery stores", press: () {}),
          CategoryItem(title: "Medical stores", press: () {}),
          CategoryItem(title: "Medical stores", press: () {}),
          CategoryItem(title: "Medical stores", press: () {}),
          CategoryItem(title: "Medical stores", press: () {}),
          CategoryItem(title: "Medical stores", press: () {}),
        ],
      ),
    );
  }
}
