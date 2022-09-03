GradeChecker(grade) {
  if (grade <= 100 && grade >= 89) {
    return 'A';
  } else if (grade <= 88 && grade >= 72) {
    return 'B';
  } else if (grade <= 71 && grade >= 53) {
    return 'C';
  } else if (grade <= 52 && grade >= 33) {
    return 'D';
  } else if (grade <= 32 && grade >= 0) {
    return 'F';
  }
}
