void main(List args) {
  print(args);

  var showname = show("Jimmy", 20);
  print(showname);

  print(getPerson("Tommy", 30));

  someOne("Bob");
  someOne("Alex",age: 20);
  someOne("charlie",age: 23, gender: "male");
  someOne("stan",gender: "male");

  someOne2("david");
  someOne2("ella",23);
  someOne2("newton",47,"male");

  someOne3("lucy");

  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);

  //传递匿名方法
  list.forEach((el){print(el);});

  var func = return_closure();
  func();
  func();
  func();
  func();
}
/*方法也是对象，并且有具体类型Function
* 方法可以赋值给变量，也可以当做其他方法的参数。
*  也可以把 Dart 类的实例当做方法来调用
* */
String show(String name, int age)
{
  return "name is $name, age is $age";
}
/*返回值类型，参数类型都可省略*/
describe(name,age){
  print("name is $name, age is $age");
}
/*箭头语法：=> expr 是{ return expr; } 形式的缩写。=> 形式
有时候也称之为 胖箭头 语法*/
getPerson(name,age) => "name is $name, age is $age";

/*可选参数
* 如果存在具体参数，可选参数声明，必须在参数后面
* */
//可选命名参数
someOne(String name, {int age, String gender}) 
{
  print("name=$name,age=$age,gender=$gender");
}
//可选位置参数
someOne2(String name, [int age, String gender])
{
  print("name=$name,age=$age,gender=$gender");
}

/*默认参数值
*
* 使用=在可选参数指定默认值
* 默认值只能是编译时常量
* */
someOne3(String name, {int age = 20, String gender = "male"})
{
  print("name=$name,age=$age,gender=$gender");
}

/*方法对象
*
* 方法可以赋值给变量，也可以当做其他方法的参数。
* */
printElement(element) {
  print(element);
}

/*匿名方法特性
*
* */


/*闭包
* 闭包是一个方法(对象)
* 闭包定义在其他方法内部
* 闭包能够访问外部方法内的局部变量，并持有其状态
* */
return_closure() {
  int count = 0;
//  printCount() {//闭包
//    print(count++);
//  }
//  return printCount;
  return () {
    print(count++);
  };
}