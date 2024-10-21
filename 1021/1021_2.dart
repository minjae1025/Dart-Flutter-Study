import 'dart:io';

void main() {
  int num1 = _getInputNumber('첫 번째 수를 입력해 주세요 : ');
  int num2 = _getInputNumber('두 번째 수를 입력해 주세요 : ');
  String? op = _getInputOperator('+, -, *, / 중에서 골라주세요 : ');

  double? answer = _calculate(num1, num2, op);
  if (answer == null) {
    print('잘못 입력하셨습니다');
  } else {
    print("답 : $answer");
  }
}

int _getInputNumber(String prompt) {
  stdout.write(prompt);
  return int.parse(stdin.readLineSync()!);
}

String? _getInputOperator(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync();
}

double? _calculate(int num1, int num2, String? op) {
  switch (op) {
    case '+': return (num1 + num2).toDouble();
    case '-': return (num1 - num2).toDouble();
    case '*': return (num1 * num2).toDouble();
    case '/': return num1 / num2;
    default: return null;
  }
}

//계산하는 방식을 함수화 함
//_getInputNumber : 안내 문구 + 숫자 입력
//_getInputOperator : 안내 문구 + 기호 입력
//_calculate : switch case문을 사용하여 처리
//if문에서 null이면 잘못됨 출력