import 'dart:convert';
import 'dart:io';

void main() {
  Set<String> mirim = {
    '김민재',
    '김민재',
    '김이레',
    '윤시웅',
    '이효은',
    '김민재',
  };
  print(mirim); //출력값 : {김민재, 김이레, 윤시웅, 이효은}

  mirim.add('윤시웅');

  print(mirim); //출력값 : {김민재, 김이레, 윤시웅, 이효은}

  mirim.remove('이효은');

  print(mirim); //출력값 : {김민재, 김이레, 윤시웅}

  print(mirim.contains('이효은')); //출력값 : false;
}