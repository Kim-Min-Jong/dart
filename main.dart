void main() {
  // 함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용하고
  // class에서 변수나 property를 선언할 때는 타입을 지정해준다.
  var a = "123";
  String b = "123";


  // 기본적으로 컴파일러가 타입을 정하지만
  // dynamic - 동적 타입도 지원, 타입 체크하는 것이 중요
  dynamic name;
  name = "asd"
  name = 123
  name = true
  // 해당 타임 이라면? -> 타입 메소드 제공..
  if(name is String) {

  }


  // null safety - 코틀린과 동일 개념
  // ?. 연산자 지원
  String? name = "hello";
  name = null;
  name?.length;




  // 상수 final  재할당 불가 -> js의 const
  final a = "a";  // 컴파일러기 타입 추론함 String  생략 가능



  // 지연 초기화  (코틀린과 동일)
  late final name; // 먼저 초기화 안해도 됨
  late int k;

  // 작업 후...
  k = 123;
  name = "213" // 변경불가 final이라서



  // const
  /*
  dart에서 const는 compile-time constant를 만들어준다.
  const는 컴파일할 때 알고 있는 값을 사용해야 한다.
  만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 그건 const가 아닌 final이나 var가 되어야 한다

  const: 컴파일 시점에 바뀌지 않는 값 (상수, api key)
  final: 컴파일 시점에 바뀌는 값 (API에서 받아온 값, 사용자 입력값, 런타임에 정해지는 값  -> final or var 사용)
  */
  const api = "12312313"





}