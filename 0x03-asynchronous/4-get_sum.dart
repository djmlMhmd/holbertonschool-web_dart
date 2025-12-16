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
    final dynamic ordersDecoded = jsonDecode(ordersData);
    
    if (ordersDecoded == null || ordersDecoded is! List) {
      return -1;
    }
    
    final List<dynamic> orders = ordersDecoded;

    // Calculate total price
    double total = 0.0;
    for (var product in orders) {
      final String priceData = await fetchProductPrice(product);
      final dynamic priceDecoded = jsonDecode(priceData);
      
      if (priceDecoded == null) {
        return -1;
      }
      
      final double price = (priceDecoded as num).toDouble();
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}

