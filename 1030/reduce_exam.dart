void main() {
  List<int> numbers = [1, 2, 4, 8, 16];
  final sum = numbers.reduce((prev, next) {
    print("현재 값 : $prev");
    print("--------");
    return prev+next;
  });

  print("총 합 : $sum");


  List<String> friends = ['윤시웅', '이효은', '김이레'];
  final result = friends.reduce((prev, next) => prev + ', ' + next);

  print("친구들 : $result");
}
