void main() async {
  final answer1 = await calculation(1, 3);
  final answer2 = await calculation(2, 4);

  print(answer1);
  print(answer2);
}

Future<int> calculation(int num1, int num2) async {
  int sum;
  print('계산을 시작합니다. $num1 + $num2 = ?');
  sum = num1 + num2;

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 결과 : $num1 + $num2 = $sum');
  });

  print('함수가 끝났습니다.');

  return sum;
}