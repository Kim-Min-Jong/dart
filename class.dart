class Player {
    // final 키워드를 통해 private하게 만들어 줄 수 있음 (게터,세터로 접근)
    // late 키워드를 통해 생성자 등에서 나중에 받을 수 있도록 할 수 있음
    String name = "123";
    int xp = 100;
    // 생성자
    Player(String name){
        this.name = name;
    }
    Player(this.name, this.xp); // 이렇게 바로 생성자 바인딩도 가능
    Player({required this.name, required this.xp}); // Named Constructor (function에서 사용하던 것처럼 동일 null 처리를 위한 required or default value 설정)
    
    // Named constructor 특정한 것만 파라미터로 받는 생성자   ":" 이후로 클래스 초기화 작업 (여기서도 {}로 묶어서 named constructor로 사용가능, not positional)
    Player.create100P(this.xp) : this.name = "123", this.xp = xp; 
    Player.create200P(this.xp) : this.name = "123", this.xp = xp;


    // 연습
    Player.fromJson(Map<String, dynamic> playerJson) :
        name = playerJson['name']
        ..
        .. ;


    void sayName(){
        // class method안에서는 this를 쓰지 않는 것을 권장한다.
        print("Hi my name is $name")
    }
}


// enum class
enum Team { red, blue } // Team.red, Team.blue




// abstract class
abstract class Human {
    void walk();
}

class Player extends Human {
    // 생략
    void walk(){
        print("working!");
    }
}

// Mixin class 생성자가 없는 클래스, 재사용 가능(재사용해야 쓰는 의미가 있음)
class Strong {
    final double level = 1500.1;
}
class QuickRunner {
    void run() {
        print("run");
    }
}

// with으로 Mixin class의 프로퍼티 메소드를 싹 가져옴 (상속이 아님 가져오는 것 뿐)
class player with Strong, QuickRunner {

}

void main() {
    var player = Player("123", 100);
    var player2 = Player(name:"123", xp:100); // Named parameters Constructor
    
    var player100 = Player.create100P(xp:100); // Named Constructor
    var player200 = Player.create200P(xp:200); // Named Constructor


    // 연습
    var apiData = [
        {
            "name":"asd",
            "team":"red",
            "xp":0,
        },
        
        {
            "name":"asd1",
            "team":"red1",
            "xp":1,
        },
        {
            "name":"asd2",
            "team":"red2",
            "xp":2,
        },
        var player3 = Player.fromJson(apiData[0])
        apiData.forEach((player) {
            var player = Player.fromJson(player);
            player.sayHello();
        })

        // cascade notation (편리한 문법)
        // 프로퍼티 변경 .. 기호
        var player = Player(name:"123", xp:120) :
            ..name = "123"  // == player.name="123";
            ..xp = 12;
    ]


}


