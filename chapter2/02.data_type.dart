/*
* 内置类型
* 数值型-Number (num, int, double)
* 字符串-String
* 布尔型-Boolean
* 列表-list
* 键值对-Map
* Runes
* Symbols
* */
void main() {
  num a = 1;
  print(a);
  a = 1.1;
  print(a);

  //具体的类型声明只能用符合的值进行初始化
  int b = 20;
//  b = 20.1;//error: A value of type 'double' can't be assigned to a variable of type 'int'.
  print(b);
  double e = 10.2;
  print(e);

  /*数值型操作
  * 运算符：+ - * / ~/ %
  * 常用属性：isNaN， isEven, isOdd等
  * 常用方法：abs(), round(), floor(), ceil(), toInt(), toDouble()
  * */

  print(b / e);
  print(b ~/ e); //取整
  print(b % e);

  print(0.0 / 0.0);
  print(b.isEven);//偶数

  int f = -100;
  print(f.abs());

  double g = 10.5;
  print(g.round()); //四舍五入
  print(g.floor()); //不大于此数的最大整数
  print(g.ceil());  //不小于此数的最小整数

  print(g.toInt());
  print(g.toString());
  print(b.toDouble());
}
