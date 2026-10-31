
void main() {
  // Store the school name. const means the value cannot change.
  const schoolName = 'ST PETER COLLEGE OF SHYOGWE';

  // Store the student or group name.
  const studentName = 'GROUP 4';

  // Store the student's age.
  const age = 22;

  // Store all student marks in a list.
  final marks = [65, 48, 90, 72, 55, 30, 81, 22, 88, 76, 94];

  // This function returns a grade for each mark.
  String gradeFor(int mark) {
    // Return A if the mark is 80 or above.
    if (mark >= 80) return 'A';

    // Return B if the mark is 70 or above.
    if (mark >= 70) return 'B';

    // Return C if the mark is 60 or above.
    if (mark >= 60) return 'C';

    // Return D if the mark is 50 or above.
    if (mark >= 50) return 'D';

    // Return F if the mark is below 50.
    return 'F';
  }

  // Add all marks to get the total.
  final total = marks.reduce((sum, mark) => sum + mark);

  // Divide the total by the number of marks to get the average.
  final average = total / marks.length;

  // Find the highest mark in the list.
  final highest = marks.reduce((a, b) => a > b ? a : b);

  // Find the lowest mark in the list.
  final lowest = marks.reduce((a, b) => a < b ? a : b);

  // Count marks that are 50 or above.
  final passed = marks.where((mark) => mark >= 50).length;

  // Find the number of failed marks.
  final failed = marks.length - passed;

  // The overall result is PASS if the average is at least 50.
  final overallResult = average >= 50 ? 'PASS' : 'FAIL';

  // Print the top border of the report.
  print('=============================');

  // Print the report title.
  print(' SMART STUDENT TRACKER');

  // Print the school name.
  print(' School : $schoolName');

  // Print the student name and age.
  print(' Student: $studentName (Age: $age)');

  // Print the border below the student information.
  print('=============================');

  // Use a loop to display each mark and its grade.
  for (var i = 0; i < marks.length; i++) {
    // Print the number, mark, and grade in one line.
    print(
      '${(i + 1).toString().padLeft(2)} | '
      '${marks[i].toString().padLeft(2)} | ${gradeFor(marks[i])}',
    );
  }

  // Print a line before the summary.
  print('-----------------------------');

  // Print the total and average marks.
  print('Total: $total   Average: ${average.toStringAsFixed(2)}');

  // Print the highest and lowest marks.
  print('Highest: $highest   Lowest: $lowest');

  // Print the number of passed and failed marks.
  print('Passed: $passed   Failed: $failed');

  // Print the overall result.
  print('Overall result: $overallResult');

  // Print the final border of the report.
  print('=============================');
}
