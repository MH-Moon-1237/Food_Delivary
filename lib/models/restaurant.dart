import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodie/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheese Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 79,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 39),
        Addon(name: "Bacon", price: 49),
        Addon(name: "Avocado", price: 59),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, cripsy bacon, and onion rings make this beef burger a savoy delight.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 130,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 39),
        Addon(name: "Jalapenos", price: 49),
        Addon(name: "Extra BBQ Sauce", price: 59),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole wheat bun.",
      imagePath: "lib/images/burgers/vege_bueger.png",
      price: 89,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 39),
        Addon(name: "Grilled Mushrooms", price: 49),
        Addon(name: "Hummus Spread", price: 59),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A juicy beef patty topped with grilled pineapple, teriyaki sauce, lettuce, and tomato on a toasted bun.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra pineapple", price: 39),
        Addon(name: "Bacon", price: 49),
        Addon(name: "Spicy mayo", price: 45),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "A gourmet beef patty topped with creamy blue cheese, caramelized onions, arugula, and a balsamic glaze on a brioche bun.",
      imagePath: "lib/images/burgers/bluemoon_berger.png",
      price: 110,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra blue cheese", price: 50),
        Addon(name: "Bacon", price: 69),
        Addon(name: "Garlic aioli", price: 55),
      ],
    ),

    // salad
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, croutons, and parmesan cheese tossed in Caesar dressing.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 119,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra dressing", price: 50),
        Addon(name: "Grilled chicken", price: 59),
        Addon(name: "Extra parmesan", price: 40),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A fresh mix of crisp romaine lettuce, cherry tomatoes, cucumber, red onion, Kalamata olives, and feta cheese, tossed with a zesty lemon-oregano vinaigrette.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 129,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 89),
        Addon(name: "Extra feta cheese", price: 80),
        Addon(name: "Pita bread", price: 70),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A hearty salad featuring fluffy quinoa, cherry tomatoes, cucumber, red onion, bell peppers, and fresh parsley, tossed in a lemon-tahini dressing.",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 111,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 50),
        Addon(name: "Grilled shrimp", price: 69),
        Addon(name: "Toasted almonds", price: 60),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "A vibrant mix of romaine lettuce, shredded carrots, red cabbage, mandarin oranges, and crispy wonton strips, topped with toasted sesame seeds and a tangy sesame-ginger dressing.",
      imagePath: "lib/images/salads/asainsesame_salad.png",
      price: 149,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 99),
        Addon(name: "Edamame", price: 50),
        Addon(name: "Avocado", price: 80),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description:
          "A bold and zesty salad with grilled chicken, romaine lettuce, black beans, corn, cherry tomatoes, red onion, and shredded cheddar, topped with crunchy tortilla strips and served with a chipotle-lime dressing.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 159,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra chicken", price: 60),
        Addon(name: "Avocado", price: 90),
        Addon(name: "Jalapeños", price: 75),
      ],
    ),

    // Sides
    Food(
      name: "Sweet Potato Fries",
      description:
          "Crispy, golden sweet potato fries with a hint of sea salt, served with a side of chipotle aioli.",
      imagePath: "lib/images/sides/sweet_potato_side.png",
      price: 99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra chipotle aioli", price: 55),
        Addon(name: "Parmesan cheese", price: 70),
        Addon(name: "Truffle oil", price: 60),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy, golden-brown onion rings coated in a light, crunchy batter, served with a side of tangy ranch or spicy ketchup.",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra ranch", price: 75),
        Addon(name: "Spicy ketchup", price: 50),
        Addon(name: "Cheese sauce", price: 80),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Warm, crispy slices of baguette brushed with garlic butter and herbs, toasted to golden perfection.",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 139,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 75),
        Addon(name: "Parmesan topping", price: 100),
        Addon(name: "Marinara sauce", price: 75),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "A generous serving of sweet potato fries topped with melted cheddar, crispy bacon, green onions, and drizzled with chipotle aioli.",
      imagePath: "lib/images/sides/loadedfries_side.png",
      price: 169,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra bacon", price: 100),
        Addon(name: "Jalapeños", price: 75),
        Addon(name: "Sour cream", price: 85),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Golden, crispy bites filled with creamy mac and cheese, fried to perfection and served with a side of marinara or ranch.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 149,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara sauce", price: 75),
        Addon(name: "Ranch dip", price: 55),
        Addon(name: "Spicy chipotle dip", price: 79),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "A rich, fudgy chocolate brownie with a slightly crispy crust and a gooey center, served warm.",
      imagePath: "lib/images/desserts/brownie_dessert.png",
      price: 119,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream scoop", price: 55),
        Addon(name: "Whipped cream", price: 75),
        Addon(name: "Chocolate drizzle", price: 50),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "A smooth and creamy New York-style cheesecake with a buttery graham cracker crust, topped with your choice of sauce.",
      imagePath: "lib/images/desserts/cheesecake_dessert.png",
      price: 129,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry sauce", price: 75),
        Addon(name: "Blueberry compote", price: 79),
        Addon(name: "Chocolate drizzle", price: 55),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "A classic warm apple pie with a flaky crust, filled with cinnamon-spiced apples and served with your choice of topping.",
      imagePath: "lib/images/desserts/apple_pie_dessert.png",
      price: 110,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream scoop", price: 65),
        Addon(name: "Caramel drizzle", price: 45),
        Addon(name: "Whipped cream", price: 75),
      ],
    ),
    Food(
      name: "Pear Pie",
      description:
          "A delicious, tender pear pie with a buttery, flaky crust, filled with juicy pears and a hint of cinnamon and nutmeg.",
      imagePath: "lib/images/desserts/pear_pie_dessert.png",
      price: 139,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream scoop", price: 80),
        Addon(name: "Cinnamon sugar", price: 65),
        Addon(name: "Whipped cream", price: 75),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A rich and decadent red velvet cake with a molten chocolate center, served warm with a dusting of powdered sugar.",
      imagePath: "lib/images/desserts/redvelvet_dessert.png",
      price: 149,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream scoop", price: 50),
        Addon(name: "Chocolate drizzle", price: 75),
        Addon(name: "Whipped cream", price: 99),
      ],
    ),

    // Drinks
    Food(
      name: "Lemonade",
      description:
          "A refreshing, tangy lemonade made with freshly squeezed lemons, a touch of sweetness, and served chilled.",
      imagePath: "lib/images/drinks/lemonade_drink.png",
      price: 79,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra lemon slices", price: 50),
        Addon(name: "Mint leaves", price: 25),
        Addon(name: "Raspberry syrup", price: 35),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "A chilled and refreshing iced tea, brewed to perfection and served over ice with a slice of lemon.",
      imagePath: "lib/images/drinks/ice_tea_drink.png",
      price: 99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sweetener", price: 25),
        Addon(name: "Extra lemon slices", price: 40),
        Addon(name: "Peach syrup", price: 35),
      ],
    ),
    Food(
      name: "Smoothie",
      description:
          "A creamy and refreshing smoothie made with fresh fruit, yogurt, and a splash of juice, blended to perfection.",
      imagePath: "lib/images/drinks/smoothie_drink.png",
      price: 89,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein boost", price: 15),
        Addon(name: "Chia seeds", price: 20),
        Addon(name: "Spinach", price: 35),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "A classic cocktail made with fresh mint, lime, rum, and a splash of soda water, served over ice for a refreshing drink.",
      imagePath: "lib/images/drinks/mojito_drink.png",
      price: 109,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra rum", price: 50),
        Addon(name: "Mint leaves", price: 25),
        Addon(name: "Lime wedges", price: 40),
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description:
          "A delicious espresso-based drink with steamed milk, vanilla syrup, and a rich caramel drizzle, served hot or iced.",
      imagePath: "lib/images/drinks/caramel_drink.png",
      price: 115,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra caramel drizzle", price: 75),
        Addon(name: "Almond milk", price: 50),
        Addon(name: "Whipped cream", price: 35),
      ],
    ),
  ];
  /*
  G E T T E R S
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*

  O P E R A T I O N S
  
  */
  //user cart
  final List<CartItem> _cart = [];

  //  add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food & selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list off the selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwie, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
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

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /*

  H E L P E R S
  
  */

  // Generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // Format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("--------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// Format double value into money
  String _formatPrice(double price) {
    return "\৳${price.toStringAsFixed(2)}";
  }

// Format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
