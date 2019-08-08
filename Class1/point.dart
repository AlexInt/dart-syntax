
/*初始化列表
* 初始化列表会在构造方法体执行之前执行
* 使用逗号分隔初始化表达式
* 初始化列表常用于设置final变量的值
* */
class Point {
  final num x;
  final num y;

  Point(this.x, this.y);

  // Initializer list sets instance variables before
  // the constructor body runs.
  Point.fromJson(Map jsonMap)
      : x = jsonMap['x'],
        y = jsonMap['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }
}