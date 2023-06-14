import 'package:flutter/material.dart';
import 'package:smarthub/user_module/screens/home/components/category_item.dart';

class CategoryList extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onCategorySelected;

  const CategoryList({
    Key? key,
    required this.selectedIndex,
    required this.onCategorySelected,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> categories = [
    'Food Stores',
    'Grocery Stores',
    'Medical Stores',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryItem(
            title: categories[index],
            isActive: index == widget.selectedIndex,
            press: () {
              widget.onCategorySelected(index);
            },
          ),
        ),
      ),
    );
  }
}
