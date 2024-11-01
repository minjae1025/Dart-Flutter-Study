void main() {
  calculation(1, 2);
  calculation(3, 4);
}

void calculation(int num1, int num2) {
  int sum;
  print('계산을 시작합니다. $num1 + $num2 = ?');

  Future.delayed(Duration(seconds: 2), () {
    sum = num1 + num2;
    print('계산 결과 : $num1 + $num2 = $sum');
  });

  print('계산이 끝났습니다.');
}