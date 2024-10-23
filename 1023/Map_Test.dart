import 'dart:convert';
import 'dart:io';

void main() {
  Map<String, String> mirim = {
    '기아':'나성범',
    '삼성':'구자욱',
    'LG':'김현수',
    '두산':'양석환',
    '롯데':'전준우',
    '한화':'채은성',
    '키움':'송성문',
    'NC':'박민우'
  };

  stdout.write('원하는 팀을 말해주세요 : ');
  var team = stdin.readLineSync(encoding: utf8)?.toUpperCase();

  if (mirim.containsKey(team)) {
    print('$team의 주장은 ${mirim[team]} 입니다.');
  } else {
    print('${team}의 주장은 공석이거나 잘못된 팀입니다.');
  }
}
