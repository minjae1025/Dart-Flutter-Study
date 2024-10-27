void main() {
  List<String> friends = ['윤시웅', '김이레', '이효은', '박홍준', '윤시웅'];
  //friends List 출력
  print(friends);

  Map friendsMap = friends.asMap();

  //friendsMap 전체 내용, 키, 값 출력
  print(friendsMap);
  print(friendsMap.keys);
  print(friendsMap.values);

  Set friendsSet = friends.toSet();

  //friendsSet 내용 출력
  print(friendsSet);
}