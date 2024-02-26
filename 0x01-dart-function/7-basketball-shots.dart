int getPoint(Map<String, int> team) {
  int points = 0;

  team.forEach((key, value) {
    if (key == 'Free throws') {
      points += value;
    } else if (key == '2 pointer') {
      points += value * 2;
    } else if (key == '3 pointer') {
      points += value * 3;
    }
  });

  return points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  num pointsA = getPoint(teamA);
  num pointsB = getPoint(teamB);

  if (pointsA > pointsB)
    return 1;

  else if (pointsA < pointsB)
    return 2;

  return 0;
}