import 'package:flutter/material.dart';
import 'package:smarthub/constant.dart';
import 'package:smarthub/user_module/screens/home/components/food_item_list.dart';
import 'package:smarthub/user_module/screens/home/components/grocery_item_list.dart';
import 'package:smarthub/user_module/screens/home/components/medical_item_list.dart';
// import 'package:smarthub/user_module/screens/home/components/grocery_item_list.dart';
// import 'package:smarthub/user_module/screens/home/components/medical_item_list.dart';

class PopularItems extends StatelessWidget {
  final int selectedIndex;

  const PopularItems({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Popular Items 🔥',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        const SizedBox(height: 10),
        _buildItemListView(),
      ],
    );
  }

  Widget _buildItemListView() {
    switch (selectedIndex) {
      case 0:
        return const FoodItemList();
      case 1:
        return const GroceryItemList();
      case 2:
        return const MedicalItemList();
      default:
        return Container();
    }
  }
}
