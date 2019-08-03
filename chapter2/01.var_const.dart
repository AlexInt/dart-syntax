void main() {
  /*
  * 使用var 声明变量，可赋予不同类型的值
  * 未初始化时，默认值为null
  * 使用final声明一个只能赋值一次的变量
  * */
  var a;
  print(a);

  a = "hello dart";
  print(a);

  a = 30;
  print(a);

  final b = 10;
  print(b);
//  b = 20; //error: 'b', a final variable, can only be set once.
//Ctrl+Alt+L，格式化代码
  /*使用const声明常量
 *
 * 使用const声明的必须是编译器常量
 * */
  const d = 20;
//  d = 2;//error: Constant variables can't be assigned a value.
}
