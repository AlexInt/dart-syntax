void main() {
  var d = Delta();
  d.a();
}
/*
* Mixins类似于多继承，是在多继承中重用一个类代码的方式
* 作为Mixin的类不能有显示声明构造方法
* 作为mixin的类只能继承自Object
* */
class Alpha {
  void a() {
    print("Alpha a ......");
  }
}
class Bravo {
  void b() {
    print("Bravo b ......");
  }
}
class Charlie {
  void c() {
    print("Charlie c ......");
  }
}

class Delta extends Alpha with Bravo, Charlie {

}

abstract class Engine {
  void work();
}
class OilEngine implements Engine {
  @override
  void work() {
    print("Work with oil ...");
  }
}
class ElectricEngine implements Engine {
  @override
  void work() {
    print("work with Electric ...");
  }
}

abstract class Tyre {
  String name;
  void run();
}

//class Mini = Tyre with ElectricEngine;