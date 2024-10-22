void main() {
  print(findMissingNumber([3, 7, 1, 2, 8, 4, 5])); // Expected output: 6
  print(findMissingNumber([0, 1, 3])); // Expected output: 2
}

/// TASK: Find the Missing Number
/// 
/// Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing.
/// 
/// Example 1:
/// Input: [3, 7, 1, 2, 8, 4, 5]
/// Output: 6
/// 
/// Example 2:
/// Input: [0, 1, 3]
/// Output: 2
/// 
/// Implement your solution below:
int? findMissingNumber(List<int> numbers) {
  bool  boolean = true;
  int index = 0;
  
  for (int i = 0; i < numbers.length; i ++) {
    numbers.sort();
    for (int i = 0; i <= numbers.length; i++){
      if (numbers[i] != i) return i;
    }
    
      }
}
