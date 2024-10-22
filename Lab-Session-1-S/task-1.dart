void main() {
  print(reverseString('hello')); // Expected output: 'olleh'
  print(reverseString('Dart')); // Expected output: 'traD'
}

/// TASK: String Reversal
/// 
/// Write a function to reverse a string without using Dart's built-in reverse method.
/// 
/// Example 1:
/// Input: 'hello'
/// Output: 'olleh'
/// 
/// Example 2:
/// Input: 'Dart'
/// Output: 'traD'
/// 
/// Implement your solution below:
String? reverseString(String str) {
  String reversed = "";

  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}
