import 'person.dart';
import 'logger.dart';
import 'page.dart';

void main() {
  var person = new Person("Tom", 20, "male");
  var p2 = new Person.withName("Bob");
  print(p2.name);
  person.age = 20;
  person.name = "Alex";
  person.work();
  //级联操作
  person
    ..name = "Jimmy"
    ..age = 20
    ..work();

  //计算属性
  var rect = Rectangle();
  rect.width = 20;
  rect.height = 10;
  print(rect.area);
  rect.area = 300;
  print(rect.width);

  //常量构造方法
  const dog = Dog("shelby", 10, "male");

  //工厂构造方法
  var log = Logger("dev");
  print(log.name);

  //静态成员
  var page = Page();
  Page.scrollDown();
  page();  //对象当做方法使用
  Page page1;
  //条件成员访问 ?. 如果前面对象为空，就不会执行后面的方法或属性
  page1?.scrollUp();

  /*对象操作符
  * 条件成员：?.
  * 类型转换：as
  * 是否指定类型：is(是他的对象), is!(不是他的对象)
  * 级联操作：..
  * */
/*
* 对象call方法
* 如果类实现了call()方法，则该类的对象可以作为方法使用
*
* */

}
