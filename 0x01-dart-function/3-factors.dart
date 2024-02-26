int fact(int f) {
  if (f <= 0) {
    return 0;
  } else if (f == 1) {
    return 1;
  }

  int num = fact(f - 1);
  return f * num;
}