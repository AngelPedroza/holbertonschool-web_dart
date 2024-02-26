int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int pointsA = 0;
  int pointsB = 0;

  for (var key in teamA.keys) {
    if (key == 'Free throws') {
      pointsA += teamA['Free throws']!;
      pointsB += teamB['Free throws']!;
    }

    if (key == '2 pointer') {
      pointsA += teamA['2 pointer']! * 2;
      pointsB += teamB['2 pointer']! * 2;
    }

    if (key == '3 pointer') {
      pointsA += teamA['3 pointer']! * 3;
      pointsB += teamB['3 pointer']! * 3;
    }
  }

  if (pointsA > pointsB)
    return 1;

  if (pointsA < pointsB)
    return 2;

  return 0;
}