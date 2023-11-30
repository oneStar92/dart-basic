void main() {
  var players = ['Player 1', 'Player 2', 'Player 3', 'Player 4'];
  var clapCount = 0;
  var roolCount = 0;
  var ahhCount = 0;
  var clapCountsByPlayer = [0, 0, 0, 0];

  for (int turn = 1; turn <= 100; turn++) {
    String answer;
    if (turn % 30 == 0) {
      answer = 'ahh';
      ahhCount++;
    } else if (turn % 3 == 0) {
      answer = 'clap';
      clapCountsByPlayer[(turn - 1) % 4] += 1;
      clapCount++;
    } else if (turn % 10 == 0) {
      answer = 'rool';
      roolCount++;
    } else {
      answer = '$turn';
    }

    print('${players[(turn - 1) % 4]}: $answer');
  }

  print("clap의 총 갯수: $clapCount");
  print("rool의 총 갯수: $roolCount");
  print("ahh의 총 갯수: $ahhCount");

  var mostClapCount = 0;
  var mostClapCountIndex = 0;
  for (int i = 0; i < 4; i++) {
    print("${players[i]}: ${clapCountsByPlayer[i]}");
    if (mostClapCount < clapCountsByPlayer[i]) {
      mostClapCount = clapCountsByPlayer[i];
      mostClapCountIndex = i;
    }
  }

  print("가장 많은 clap을 출력한 플레리어: ${players[mostClapCountIndex]}");
}