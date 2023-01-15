void main() {

  // 아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)
  // 이것이 Dart가 진정한 객체 지향 언어로 불리는 이유이다.
  String name = "tom";
  bool isPlay = true;
  int age = 10;
  double money = 52.55;
  // int와 double의 부모 (정수, 소수 가능)
  num x = 12;
  num y = 1.2;



  // collection

  // list
  // 클래스 내에서는 타입 명시 추천 
  int case1 = [1,2,3,4,5];
  List case2 = [1,2,3,4,5];
  // 일반적 추천
  var case3 = [1,2,3,4,5];
 /*
  dart의 유용한 점은 `collection if`와 `collection for`을 지원하는 것이다.

  collection if를 사용하면 `존재할 수도 안할 수도 있는 요소를 가지고 올 수 있다.`

  ```dart
  void main(){
  var giveMeSix = true;
  int case1 = [
  1,
  2,
  3,
  4,
  5,
  if(giveMeSix) 6,
  ];
  // 아래와 같은 기능이다.
  if(giveMeSix){
  case1.add(6);
  }
  }
  ```
 */



 // String Interpolation 텍스트에 변수 바인딩
 // 코틀린과 동일한 방법
  var name = "tom";
  var age = 10;
  var greeting = "hello $name, I'm ${age + 5}";


  // collection for  - collection if 처럼 for문을 통해 다른 리스트의 요소를 추가할 수 있음
  var oldFriends = ["nico", "lynn"];
  var newFriends = [
  "tom",
  "jon",
  for (var friend in oldFriends) "❤️ $friend"
  ];

  print(newFriends); // [tom, jon, ❤️ nico, ❤️ lynn]  


  

  /*
  map이란 js에 object, python에 dictionary와 같다.
  Map안에 List를 넣어줄 수도 있다.
  타입 직접 지정, var 다 가능
  key에 리스트도 가능하다.
  */
  var player = {
  "name":"jisoung",
  "age": 17,
  "isLoveFlutter": true,
  };
  Map player = {
  "name":"jisoung",
  "age": 17,
  "isLoveFlutter": true,
  };
  void main(){
Map<List<int>, bool> player = {
  [1,2,3,4,5]: true,
  [6,7,8,9,10]: false,
  };


  

  // set 중복없는 자료형
  // var, 타입 직접 지정...
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  set<int> halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
}