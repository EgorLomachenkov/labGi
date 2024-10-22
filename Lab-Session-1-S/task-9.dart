import 'dart:math';
void main() {
  List<List<int>> matrix1 = [
    [1, 0, 1, 0, 0],
    [1, 0, 1, 1, 1],
    [1, 1, 1, 1, 1],
    [1, 0, 0, 1, 0]
  ];
  print(maximalRectangle(matrix1)); // Expected output: 6 (rectangle of size 3x2)

  List<List<int>> matrix2 = [
    [0, 1],
    [1, 0]
  ];
  print(maximalRectangle(matrix2)); // Expected output: 1 (single 1s are the largest rectangles)
}

/// TASK: Maximal Rectangle
/// 
/// Given a 2D binary matrix filled with 0's and 1's, find the largest rectangle 
/// containing only 1's and return its area.
/// 
/// Example 1:
/// Input:
/// [
///   [1, 0, 1, 0, 0],
///   [1, 0, 1, 1, 1],
///   [1, 1, 1, 1, 1],
///   [1, 0, 0, 1, 0]
/// ]
/// Output: 6
/// 
/// Example 2:
/// Input:
/// [
///   [0, 1],
///   [1, 0]
/// ]
/// Output: 1
/// 
/// Implement your solution below:
int? maximalRectangle(List<List<int>> matrix) {
  int rows = matrix.length;
  int cols = matrix[0].length;

  // Создаем вспомогательный массив для хранения высот столбцов
  List<int> height = List.filled(cols, 0);

  int maxArea = 0;

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      // Обновляем высоту столбца
      height[j] = matrix[i][j] == 0 ? 0 : height[j] + 1;

      // Находим максимальную площадь прямоугольника в текущей строке
      int left = j;
      while ( left > 0 && height[left - 1] >= height[j]) {
        left--;
      }
      int right = j;
      while (right < cols - 1 && height[right + 1] >= height[j]) {
        right++;
      }
      if(j == 0 ){
          maxArea = max(maxArea, height[j] * (right - left ));
      } else {
          maxArea = max(maxArea, height[j] * (right - left + 1));
      }
    }
  }

  return maxArea;
}
