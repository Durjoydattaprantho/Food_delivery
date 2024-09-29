import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class myTabBar extends StatelessWidget {
  final TabController tabController;
  const myTabBar({
    super.key,
    required this.tabController,
  });


  List<Tab> _builderCategoryTabs(){
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
}



  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _builderCategoryTabs(),
      ),
    );
  }
}
