// Food item
class Food {
  final String name; // Cheese burger
  final String description; // A burger full of cheese
  final String imagePath; // lib/images/cheese_burger.png
  final double price; // 499
  final FoodCategory category; // Burger
  List<Addon> availableAddons; // [Extra cheese, sauce, extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

// Food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// Food Addon
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
