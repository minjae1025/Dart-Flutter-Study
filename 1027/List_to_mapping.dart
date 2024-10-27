void main() {
  List<String> Friends = ['윤시웅', '김이레', '이효은'];
  print(Friends);

  //값 안에 '친구 '를 추가하는 함수
  final FriendsMap1 = Friends.map((v){
    return '친구 $v';
  });
  print(FriendsMap1);

  //=>를 사용한 간단하게 한 함수
  final FriendsMap2 = Friends.map((v) => '친구 $v');
  print(FriendsMap2);
}
