import 'dart:io';
import 'dart:math';

void main() {
  List<int> lotto = [];
  print("숫자 6개를 입력해 주세요. (1~45)");
  for (int i = 0; i<6; i++) {
    lotto.add(_inputNum());
  }

  List<int> prize = [];
  for (int i = 0; i<6; i++) {
     prize.add(_randomNum(prize));
  }

  bool bouns = false;
  int bouns_num = _randomNum(prize);
  int cnt = 0;
  lotto.sort();
  prize.sort();
  for (int i = 0; i<lotto.length; i++) {
    for (int j = 0; j<prize.length; j++) {
      if (lotto[i] == prize[j]) {
        cnt++;
        break;
      }
    }
    if (lotto[i] == bouns_num) {
      bouns = true;
    }
  }

  if (cnt == 6) {
    print("1등입니다.");
  }
  else if (cnt == 5 && bouns) {
    print("2등입니다.");
  }
  else if (cnt == 5) {
    print("3등입니다.");
  }
  else if (cnt == 4) {
    print("4등입니다.");
  }
  else if (cnt == 3) {
    print("5등입니다.");
  }
  else {
    print("탈락입니다.");
  }

  print(cnt.toString()+"개 맞았습니다");
}

int _inputNum() {
  stdout.write("숫자를 입력해 주세요 : ");
  int temp = int.parse(stdin.readLineSync()!);
  if (temp < 1 || temp > 45) {
    print("1~45사이의 숫자만 입력해 주십시오.");
    _inputNum();
  }
  return temp;
}

int _randomNum(List prize) {
  int num = Random().nextInt(45)+1;
  for (int i = 0; i<prize.length; i++) {
    if (num == prize[i]) {
      _randomNum(prize);
    }
  }
  return num;
}

