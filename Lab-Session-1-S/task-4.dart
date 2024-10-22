void main() {
  print(mergeSortedLists([1, 2, 4], [1, 3, 4])); // Expected output: [1, 1, 2, 3, 4, 4]
  print(mergeSortedLists([0, 3, 8], [5, 6])); // Expected output: [0, 3, 5, 6, 8]
}

/// TASK: Merge Two Sorted Lists
/// 
/// Write a program to merge two sorted lists into a single sorted list.
/// 
/// Example 1:
/// Input: [1, 2, 4], [1, 3, 4]
/// Output: [1, 1, 2, 3, 4, 4]
/// 
/// Example 2:
/// Input: [0, 3, 8], [5, 6]
/// Output: [0, 3, 5, 6, 8]
/// 
/// Implement your solution below:
List<int>? mergeSortedLists(List<int> list1, List<int> list2) {
  int i = 0;
  while (i < list2.length){
    list1.add(list2[i]);
    i++;
  }
  list1.sort();
  return list1;
}
