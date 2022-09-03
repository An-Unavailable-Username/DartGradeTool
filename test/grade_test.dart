import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_checker.dart';

void main() {
  int grade1 = 100;
  int grade2 = 88;
  int grade3 = 71;
  int grade4 = 52;
  int grade5 = 32;

  test(GradeChecker(grade1) == 'A', () => null);
  test(GradeChecker(grade2) == 'B', () => null);
  test(GradeChecker(grade3) == 'C', () => null);
  test(GradeChecker(grade4) == 'D', () => null);
  test(GradeChecker(grade5) == 'F', () => null);
}
