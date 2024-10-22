void main() {
  print(binarySearch([1, 3, 5, 7, 9], 3)); // Expected output: 1 (index of 3 in the array)
  print(binarySearch([2, 4, 6, 8, 10], 5)); // Expected output: -1 (5 is not in the array)
}

/// TASK: Binary Search
/// 
/// Implement binary search on a sorted array of integers. The function should return 
/// the index of the target element if it is found in the array, or -1 if it is not found.
/// 
/// Example 1:
/// Input: Array = [1, 3, 5, 7, 9], Target = 3
/// Output: 1
/// 
/// Example 2:
/// Input: Array = [2, 4, 6, 8, 10], Target = 5
/// Output: -1
/// 
/// Implement your solution below:
int? binarySearch(List<int> nums, int target) {
  int index = -1;
  for (int i = 0; i < nums.length ; i ++){
    if (nums[i] == target) index = i;
  }
  return index;
}
