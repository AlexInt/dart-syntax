void main() {
  //Map创建
  var lang = {"first":"Dart", "second":"Java"};
  //创建不可变
  var constLang = const {"first":1};
  //构造创建
  var newLang = new Map();

  var map1 = {"first":"Dart", 1:true, true:2};
  map1[1] = false;
  print(map1);

  /*常用操作
  * length
  * isEmpty()
  * isNotEmpty()
  * keys
  * values
  * containsKey()
  * containsValue()
  * remove()
  * forEach()
  * */
  print(map1.isNotEmpty);
  var list = ["1", "2", "3"];
  var map2 = list.asMap();
  print(map2);
}