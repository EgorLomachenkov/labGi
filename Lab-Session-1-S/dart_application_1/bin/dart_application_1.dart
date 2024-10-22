import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Example test cases (you will need to replace 'API_URL' and 'API_KEY' with actual values)
  print(await convertCurrency('USD', 'EUR', 100)); // Convert 100 USD to EUR
  print(await convertCurrency('GBP', 'INR', 50)); // Convert 50 GBP to INR
}

/// TASK: Build a function that converts currency from one type to another.
/// The function takes three parameters: the currency code to convert from,
/// the currency code to convert to, and the amount to be converted. The function
/// should use a public API to get exchange rates.
/// 
/// Example 1:
/// Input: 'USD', 'EUR', 100
/// Output: <Converted Amount in EUR>
/// 
/// Example 2:
/// Input: 'GBP', 'INR', 50
/// Output: <Converted Amount in INR>
/// 
/// Implement your solution below:
Future<double> convertCurrency(String from, String to, double amount) async {
  // Replace with your actual API URL and key
  const String apiUrl = 'https://api.exchangerate-api.com/v4/latest/';
  
  // Fetch the exchange rates from the API
  final response = await http.get(Uri.parse('$apiUrl$from'));

  // Check if the request was successful
  if (response.statusCode == 200) {
    // Parse the JSON response
    final data = json.decode(response.body);
    // Get the exchange rate for the target currency
    final double rate = data['rates'][to];

    // Convert the amount to the target currency
    return amount * rate;
  } else {
    throw Exception('Error');
  }
}
