void main() {
  String number = '윤시웅 김이레 이효은';
  print(number);

  final mappingTest = number.split(' ').map((x) => '$x.png').toSet();
  print(mappingTest);
}