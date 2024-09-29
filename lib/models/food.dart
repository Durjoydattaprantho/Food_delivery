//food item
class Food{
  final String name;            //cheese burger
  final String description;     // a burger full of cheese
  final String imagePath;       //images
  final double price;
  final FoodCategory category;   //burger
  List<Addon> availableAddons; //extra cheese

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
});
}


//food categories
enum FoodCategory{
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}


//food address
class Addon{
  String name;
  double price;

  Addon({
required this.name,
required this.price,
});
}