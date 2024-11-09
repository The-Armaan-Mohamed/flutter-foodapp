import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/cart_item.dart';
import 'package:foodapp/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Classic Cheese Burger",
        description:
            "A juicy beef patty with metled chedar, lettace and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Macon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        name: "Breakfast Burger",
        description:
            "A juicy beef patty with metled chedar, lettace and a sunny-side egg.",
        imagePath: "lib/images/burgers/breakfast_burger.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Macon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        name: "BBQ Burger",
        description:
            "A juicy beef patty with metled chedar, lettace and a hint of onion and pickle in BBQ sauce.",
        imagePath: "lib/images/burgers/bbq_burger.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Macon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        name: "Mini Burger",
        description:
            "A small beef patty with metled chedar, lettace and pickle.",
        imagePath: "lib/images/burgers/mini_burger.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Macon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        name: "Meaty Shredded Burger",
        description:
            "A pulled lamb patty with metled chedar, lettace and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/shredded_burger.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Macon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.burgers),

    // salads
    Food(
        name: "Classic Salad",
        description:
            "Crispy lettuce, feta cheese, cherry tomatoes and cucumber.",
        imagePath: "lib/images/salads/classic_salad.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra olives", price: 0.99),
          Addon(name: "Pineapple", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.salads),
    Food(
        name: "Fruit Salad",
        description:
            "Crispy lettuce, strawberries, cherry tomatoes and cucumber.",
        imagePath: "lib/images/salads/fruit_salad.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra apples", price: 0.99),
          Addon(name: "Pineapple", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.salads),
    Food(
        name: "Mexican Salad",
        description:
            "Avocado, corn, cherry tomatoes and cucumber on a bed of tortias.",
        imagePath: "lib/images/salads/mexican_salad.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra olives", price: 0.99),
          Addon(name: "Pineapple", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.salads),
    Food(
        name: "Pasta Salad",
        description:
            "Crispy lettuce, feta cheese, cherry tomatoes and pasta in creamy sauce.",
        imagePath: "lib/images/salads/pasta_salad.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra olives", price: 0.99),
          Addon(name: "Pineapple", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.salads),
    Food(
        name: "Prawn Salad",
        description:
            "Crispy lettuce, feta cheese, cherry tomatoes and king prawns.",
        imagePath: "lib/images/salads/prawn_salad.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra prawns", price: 3.99),
          Addon(name: "Pineapple", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.salads),

    // sides
    Food(
        name: "Fries",
        description: "Large crunchy and crispy potato wedges.",
        imagePath: "lib/images/sides/fries_side.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Onion rings", price: 1.99),
          Addon(name: "Macon", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        name: "Nachos",
        description:
            "A juicy beef mince with metled chedar, lettace and a hint of onion and pickle on a bed of Nacho chips.",
        imagePath: "lib/images/sides/nachos.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Macon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        name: "Buffalo Wings",
        description: "Large juicy and crispy chicken wings.",
        imagePath: "lib/images/sides/wings.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra ranch", price: 0.99),
          Addon(name: "Onion rings", price: 1.99),
          Addon(name: "Macon", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        name: "Buffalo Wings",
        description: "Large juicy and crispy chicken wings.",
        imagePath: "lib/images/sides/wings.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra ranch", price: 0.99),
          Addon(name: "Onion rings", price: 1.99),
          Addon(name: "Macon", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        name: "Buffalo Wings",
        description: "Large juicy and crispy chicken wings.",
        imagePath: "lib/images/sides/wings.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra ranch", price: 0.99),
          Addon(name: "Onion rings", price: 1.99),
          Addon(name: "Macon", price: 2.99),
        ],
        category: FoodCategory.sides),

    // desserts
    Food(
        name: "Cheese Cake",
        description: "A cheese cake.",
        imagePath: "lib/images/desserts/cheese_cake.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Ice-cream", price: 0.99),
          Addon(name: "Cream", price: 1.99),
          Addon(name: "Chocolates", price: 2.99),
        ],
        category: FoodCategory.desserts),
    Food(
        name: "Lava Cake",
        description:
            "A hot chocolate cake with an overflowing dark chocolate filling.",
        imagePath: "lib/images/desserts/lava_cake.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Ice-cream", price: 0.99),
          Addon(name: "Cream", price: 1.99),
          Addon(name: "Chocolates", price: 2.99),
        ],
        category: FoodCategory.desserts),
    Food(
        name: "PP&J Cake",
        description:
            "A chocolate cake, with a peanut butter layer and strawberry jam topping.",
        imagePath: "lib/images/desserts/ppj_cake.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Ice-cream", price: 0.99),
          Addon(name: "Cream", price: 1.99),
          Addon(name: "Chocolates", price: 2.99),
        ],
        category: FoodCategory.desserts),
    Food(
        name: "Pancakes",
        description:
            "A fresh stack of pancakes topped with syrpe, berries and cream.",
        imagePath: "lib/images/desserts/pancakes.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Ice-cream", price: 0.99),
          Addon(name: "Cream", price: 1.99),
          Addon(name: "Chocolates", price: 2.99),
        ],
        category: FoodCategory.desserts),
    Food(
        name: "Brownies",
        description: "Soft, gooy and delicious chocolate brownies.",
        imagePath: "lib/images/desserts/brownies.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Ice-cream", price: 0.99),
          Addon(name: "Cream", price: 1.99),
          Addon(name: "Chocolates", price: 2.99),
        ],
        category: FoodCategory.desserts),

    // drinks
    Food(
        name: "Ice Tea",
        description: "A refreshing, cold, peach tea drink.",
        imagePath: "lib/images/drinks/ice_tea.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Lemon", price: 0.99),
          Addon(name: "Mint", price: 1.99),
          Addon(name: "Fruity ice", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Chocolate Milkshake",
        description:
            "A refreshing, cold, chocolate milkshake with a side of cookies.",
        imagePath: "lib/images/drinks/chocolate_milkshake.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cookies", price: 0.99),
          Addon(name: "Whipped cream", price: 1.99),
          Addon(name: "Melted marshmellows", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Orange Juice",
        description: "A refreshing, cold, freshly squeazed orange juice.",
        imagePath: "lib/images/drinks/orange_juice.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Lemon", price: 0.99),
          Addon(name: "Mint", price: 1.99),
          Addon(name: "Fruity ice", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Coffee",
        description:
            "A great pick-me up to restore those energy levels, with fresh, hot coffee.",
        imagePath: "lib/images/drinks/coffee.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra cookies", price: 0.99),
          Addon(name: "Whipped cream", price: 1.99),
          Addon(name: "Rusks", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Strawberry Smoothie",
        description: "A refreshing, cold, strawberry smoothie drink.",
        imagePath: "lib/images/drinks/strawberry_smoothie.jpg",
        price: 0.99,
        availableAddons: [
          Addon(name: "Extra Lemon", price: 0.99),
          Addon(name: "Mint", price: 1.99),
          Addon(name: "Fruity ice", price: 2.99),
        ],
        category: FoodCategory.drinks),
  ];

  // create user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = '99 Hollywood Blv';

  /* 
  
   G E T T E R S

  */

  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  /* 
  
   O P E R A T I O N S

  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, then increase quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    // update UI
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    // update UI
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    // update UI
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    // update UI
    notifyListeners();
  }

  /* 
  
   H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Addons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
