void main() {
  MyQueue queue = MyQueue();
  queue.push(1);
  queue.push(2);
  print(queue.peek()); // Expected output: 1 (front element)
  print(queue.pop()); // Expected output: 1 (removes front element)
  print(queue.empty()); // Expected output: false (queue is not empty)
}

/// TASK: Implement Queue using Stacks
/// 
/// Implement a queue using two stacks. The queue should support 'push', 'pop', 'peek', 
/// and 'empty' operations.
/// 
/// Example Operations and Outputs:
/// - push(1)
/// - push(2)
/// - peek() -> 1 (returns the front element)
/// - pop() -> 1 (removes the front element)
/// - empty() -> false (returns false as the queue is not empty)
/// 
/// Implement the MyQueue class below:
class MyQueue {
  List<int> stack1 = [];
  List<int> stack2 = [];

  // Push element x to the back of queue.
  void push(int x) {
    stack1.add(x);
  }

  // Removes the element from in front of queue and returns that element.
  int pop() {
    if (stack2.isEmpty){
      while (stack1.isNotEmpty){
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast(); // Placeholder return
  }

  // Get the front element.
  int peek() {
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.last; // Placeholder return
  }

  // Returns whether the queue is empty.
  bool empty() {
    return stack1.isNotEmpty && stack2.isNotEmpty; // Placeholder return
  }
}
