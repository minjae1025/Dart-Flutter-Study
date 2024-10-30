void main() {
  List<int> numbers = [3, 6, 9, 12, 15];
  final sum = numbers.fold<int>(0, (prev, next) => prev+next);
  
  print(sum);

  List<String> friends = ['윤시웅', '김이레', '이효은', '박홍준'];
  final length = friends.fold<int>(0, (prev, next) => prev + next.length);

  print(length);
}