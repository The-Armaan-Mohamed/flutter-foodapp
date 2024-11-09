// food item
class Food {
  final String name; // cheese burger
  final String description; // a classic cheese burger
  final String imagePath; // lib/images/cheese_burger.png
  final double price; // 4.99

  final FoodCategory category; // burger
  List<Addon> availableAddons; // [ extra chees, sauce, extra patty ]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.availableAddons,
    required this.category,
  });
}

// food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}