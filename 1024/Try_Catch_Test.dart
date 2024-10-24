import 'dart:io';

void main() {
  List<String> numbers = ['김민재', '윤시웅', '김이레', '이효은'];

  stdout.write('찾고 싶은 사람의 순서 입력 (0~3) : ');
  int idx = int.parse(stdin.readLineSync()!);

  try {
    // 5번째 인덱스에 접근
    print(numbers[idx]);
  } catch (e) {
    // 예외가 발생했을 때
    print('범위를 초과한 위치에 접근했습니다: ${e}');
  }
}
