bool hasRepeatedChar(String str, int start, int ends) {
  String compared_one = str.substring(start, ends);
  List<String> uniques = compared_one.split('').toSet().toList();
  String compared_two = uniques.join("");

  return compared_one != compared_two;
}

String longestUniqueSubstring(String str) {
  String result = "";
  int end;

  for (int start=0; start < str.length; start++) {
    for (end=start; end <= str.length; end++) {
      var different = hasRepeatedChar(str, start, end);
      if (different)
        break;

      result = str.substring(start, end);
      if (end == str.length)
        break;
    }

    if (end == str.length) {
      break;
    }
  }
  return result;
}