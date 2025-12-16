import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Get user data
    final String userData = await fetchUserData();
    final Map<String, dynamic> userJson = jsonDecode(userData);
    final String userId = userJson['id'];

    // Get user orders
    final String ordersData = await fetchUserOrders(userId);
    final List<dynamic> orders = jsonDecode(ordersData);

    // Calculate total price
    double total = 0.0;
    for (var product in orders) {
      final String priceData = await fetchProductPrice(product);
      final double price = jsonDecode(priceData);
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}

