import 'package:flutter/material.dart';
import 'package:smarthub/user_module/screens/home/components/food_store_list.dart';
import 'package:smarthub/user_module/screens/home/components/grocery_store_list.dart';
import 'package:smarthub/user_module/screens/home/components/medical_store_list.dart';

class CategoryContent extends StatelessWidget {
  final int selectedIndex;

  const CategoryContent({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        return const FoodStoreList();
      case 1:
        return const GroceryStoreList();
      case 2:
        return const MedicalStoreList();
      default:
        return Container();
    }
  }
}
