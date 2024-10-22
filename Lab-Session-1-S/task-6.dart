void main() {
  print(firstUniqChar('What the Flutter')); // Expected output: 'W' (first unique character)
  print(firstUniqChar('Flutter Flutter')); // Expected output: '' (no unique character)
  print(firstUniqChar('Dart is great')); // Expected output: 'D' (first unique character)
}

/// TASK: First Unique Character in a String
/// 
/// Given a string, find the first non-repeating character in it and return the character.
/// If it doesn't exist, return an empty string.
/// 
/// Example 1:
/// Input: 'What the Flutter'
/// Output: 'W'
/// 
/// Example 2:
/// Input: 'Flutter Flutter'
/// Output: ''
/// 
/// Example 3:
/// Input: 'Dart is great'
/// Output: 'D'
/// 
/// Implement your solution below:
String? firstUniqChar(String s) {
  for (int i = 0; i< s.length ; i++){
        
        bool boolean = true;
      for (int j = i +1; j <s.length; j++){
        if (s[i] == s[j]) {
          boolean = false;
          break;
      }
    }
    if (boolean) return s[i];
    }
}
