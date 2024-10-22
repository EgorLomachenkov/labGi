void main() {
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  rotateImage(matrix1);
  print(matrix1); // Expected output: [[7, 4, 1], [8, 5, 2], [9, 6, 3]]

  List<List<int>> matrix2 = [
    [5, 1, 9, 11],
    [2, 4, 8, 10],
    [13, 3, 6, 7],
    [15, 14, 12, 16]
  ];
  rotateImage(matrix2);
  print(
      matrix2); // Expected output: [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
}

/// TASK: Rotate Image
///
/// Given an image represented by an N x N matrix, where each pixel in the image is
/// represented by an integer, rotate the image by 90 degrees (clockwise).
///
/// Example 1:
/// Input:
/// [
///   [1, 2, 3],
///   [4, 5, 6],
///   [7, 8, 9]
/// ]
/// Output:
/// [
///   [7, 4, 1],
///   [8, 5, 2],
///   [9, 6, 3]
/// ]
///
/// Example 2:
/// Input:
/// [
///   [5, 1, 9, 11],
///   [2, 4, 8, 10],
///   [13, 3, 6, 7],
///   [15, 14, 12, 16]
/// ]
/// Output:
/// [
///   [15, 13, 2, 5],
///   [14, 3, 4, 1],
///   [12, 6, 8, 9],
///   [16, 7, 10, 11]
/// ]
///
/// Implement your solution below:
void rotateImage(List<List<int>> matrix) {
   int rows = matrix[0].length;
  int columns = matrix.length;
  List<List<int>> rotateMatrix = List.generate(rows, (_) => List.filled(columns, 0));
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns ; j++) {
       rotateMatrix[i][j] = matrix[columns-1-j][i];

    }
  }
   print(rotateMatrix);
}
