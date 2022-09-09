import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_checker.dart';

void main() {
  final table = {
    100: 'A',
    88: 'B',
    71: 'C',
    52: 'D',
    32: 'F',
  };
  for (var grade in table.keys) {
    test('Percent to Letter Grade Check', () {
      String result = GradeChecker(grade);
      expect(result, table[grade]);
    });
  }
}
