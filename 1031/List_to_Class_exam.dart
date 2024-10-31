void main() {
  List<Map<String, String>> friends = [
    { '이름' : '윤시웅', '반' : '1반' },
    { '이름' : '이효은', '반' : '1반' },
    { '이름' : '김이레', '반' : '4반' },
    { '이름' : '박홍준', '반' : '4반' }
  ];

  final parseFrinds = friends.map((x) => Friend(
      name: x['이름']!, ban: x['반']!,
    )
  ).toList();

  for (Friend fri in parseFrinds) {
    print(fri.toString());
  }

  final ban1 = parseFrinds.where((x) => x.ban == '1반');

  print('1반 친구들 : $ban1');

  //위 버전을 합친 버전

  final total = friends.map(
      (x) => Friend(name: x['이름']!, ban: x['반']!)
  ).where((x) => x.ban == '4반');

  print('4반 친구들 : $total');
}

class Friend {
  final String name;
  final String ban;

  Friend({
    required this.name,
    required this.ban,
  });

  @override
  String toString() {
    return "Friend[이름 : $name, 반 : $ban]";
  }
}