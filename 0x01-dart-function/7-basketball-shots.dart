int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  num pointsA = 0;
  num pointsB = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws') {
      pointsA += value;
    } else if (key == '2 pointer') {
      pointsA += value * 2;
    } else if (key == '3 pointer') {
      pointsA += value * 3;
    }
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws') {
      pointsB += value;
    } else if (key == '2 pointer') {
      pointsB += value * 2;
    } else if (key == '3 pointer') {
      pointsB += value * 3;
    }
  });

  if (pointsA > pointsB)
    return 1;

  if (pointsA < pointsB)
    return 2;

  return 0;
}