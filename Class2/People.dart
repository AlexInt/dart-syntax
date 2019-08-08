class People {
  String name;
  int age;
  String _birthday;

  bool get isAdult => age>18;

  void run() {
    print("people run ...");
  }

  People(this.name) {
    print("People");
  }
}
/*继承
* 使用关键字extends继承一个类
* 子类会继承父类可见的属性和方法，不会继承构造方法
* 子类能够覆写父类的方法，getter和setter
* 单继承，多态性
* */

class Student extends People {
  final String gender;
  void study() {
    print("student study ...");
  }
//  Student(String name): super(name); //调用父类构造方法
  //初始化列表会在父类构造方法之前执行
  Student(String name, String g):gender = g,super(name);
  @override
  bool get isAdult => age > 16;
}
/*继承中构造方法
* 子类的构造方法默认会调用父类的无名无参构造方法
* 如果父类没有无名无参构造方法，则需要显式调用父类构造方法
* 在构造方法参数后使用 ：显式调用父类构造方法
* */

/*抽象类
*抽象类使用abstract表示, 不能直接被实例化
*抽象方法不用abstract修饰，无实现
* 抽象类可以没有抽象方法
* 有抽象方法的类一定得声明为抽象类
* */

abstract class Mind {
  void run();
}