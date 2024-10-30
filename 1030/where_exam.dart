void main() {
  List<Map<String, String>> friends = [
    {
      '이름' : '윤시웅', '반' : '1반',
    },
    {
      '이름' : '이효은', '반' : '1반',
    },
    {
      '이름' : '김이레', '반' : '4반',
    },
    {
      '이름' : '박홍준', '반' : '4반',
    }
  ];

  print("리스트 : $friends");

  final Class1 = friends.where((x) => x['반']=='1반').toList();
  final Class4 = friends.where((x) => x['반']=='4반').toList();
  
  print(Class1);
  print(Class4);
}