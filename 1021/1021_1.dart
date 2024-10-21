import 'dart:io';

void main() {
  stdout.write('첫 번째 수를 입력해 주세요 : ');
  int num1 = int.parse(stdin.readLineSync()!);
  print(num1);

  stdout.write('두 번째 수를 입력해 주세요 : ');
  int num2 = int.parse(stdin.readLineSync()!);
  print(num2);

  stdout.write('+, -, *, / 중에서 골라주세요 : ');
  String? op = stdin.readLineSync();
  print(op);

  double? answer;
  switch(op) {
    case '+' : answer = (num1 + num2).toDouble(); break;
    case '-' : answer = (num1 - num2).toDouble(); break;
    case '*' : answer = (num1 * num2).toDouble(); break;
    case '/' : answer = num1 / num2; break;
  }
  
  if (answer == null) {
    print('잘못 입력하셨습니다');
  }
  else {
    print("답 : " + answer.toString());
  }
}
//알게 된 점
//1. 자바에서는 Scanner이지만, Dart에서는 stdin.readLineSync()이다.
//2. 자바에서는 (타입)변수 -> 이렇게 하면 명시적 형변환이지만,
//Dart에서는 변수.toDouble() 이렇게 해야 된다. 다만 여기서도 암묵적 형변환은 있다.
//3. 타입 변수명 -> 이렇게 쓰면 null이 안되지만, 타입! 변수명을 쓰면 된다.
//4. print에서 " "+변수를 쓰려면 변수.toString()을 써야한다.
//5. 자바에서 int to String은 Integer.toString()이지만,
//Dart에서는 int.parse()이다.
