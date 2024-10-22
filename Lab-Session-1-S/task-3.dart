void main() {
  print(isValidParentheses('()[]{}')); // Expected output: true
  print(isValidParentheses('(]')); // Expected output: false
}

/// TASK: Valid Parentheses
/// 
/// Create a function to determine if a string of parentheses is valid. 
/// A string of parentheses is valid if all open brackets are closed by the 
/// same type of brackets, and open brackets are closed in the correct order.
/// 
/// Example 1:
/// Input: '()[]{}'
/// Output: true
/// 
/// Example 2:
/// Input: '(]'
/// Output: false
/// 
/// Implement your solution below:
bool? isValidParentheses(String s) {
  final Map<String, String> pairs = {
    '(': ')',
    '[': ']',
    '{': '}'
  };
  final List<String> stack = [];

  for (var char in s.split('')) {
    if (pairs.containsKey(char)) {
      stack.add(char);
    } else if (pairs.values.contains(char)) {
      if (stack.isEmpty || pairs[stack.removeLast()] != char) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
