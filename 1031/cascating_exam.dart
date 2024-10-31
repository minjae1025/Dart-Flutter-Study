void main() {
  List<String> class4 = ['김민재', '김이레', '박홍준'];
  List<String> class1 = ['윤시웅', '이효은', '이민준'];

  final friends = [...class1, ...class4];
  
  print("$class1 + $class4 = friends");

  print("friends = $friends");

  print("class1 == ...class1 : ${class1 == [...class1]}");
}