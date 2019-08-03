/*类与对象
*
* 使用关键字class声明一个类
* 使用关键字new创建一个对象，new可省略
* 说有对象都继承与Object
* */

/*属性与方法
*
* 属性默认会生成getter和setter方法
* 使用final声明的属性只有getter方法
* 属性和方法通过.访问
* 方法不能被重载
* */
class Person {
  String name;
  int age;

//  final
  String gender;

//  Person(name, age, gender) {
//    this.name = name;
//    this.age = age;
//    this.gender = gender;
//  }
  /*
  * 如果没有自定义构造方法，则会有个默认构造方法
  * 如果存在自定义构造方法，则默认构造方法无效
  * 构造方法不能重载
  * */
  //语法糖形式构造方法
  Person(this.name,this.age,this.gender);
//只有当名字冲突的时候才使用 this。否则的话， Dart 代码风格样式推荐忽略 this。

  /*命名构造方法
  * 使用命名构造方法，可以实现过个构造方法
  * 使用类名.方法的形式实现
  * */
  Person.withName(this.name);
  Person.withAge(this.age);

  void work() {
    print("Name is $name, age is $age, He is working...");
  }
}
/*类及成员可见性
*Dart中可见性以library为单位
* 默认情况下，每一个Dart文件就是一个库
* 使用 _ 表示库的私有性
* 使用import导入库
* */
class Rectangle {
  num width, height;
/*计算属性
* */
//  num get area {
//    return width * height;
//  }
  get area => width * height;

  set area(value) {
    width = value / 20;
  }
}

/*常量构造方法
* 如果类是不可变状态，可以把对象定义为编译时常量
* 使用const声明构造方法，并且所有变量都为final
* 使用const声明对象，可以省略
* */
class Dog {
  final String name;
  final int age;
  final String gender;

  const Dog(this.name,this.age,this.gender);
}
