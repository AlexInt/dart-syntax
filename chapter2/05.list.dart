void main() {
  /*创建list数组
  * */

  var list = [1, 2, 3];
  //创建不可变的list
  var list2 = const[1,2,3];
  //构造方法创建
  var list3 = new List();

  var list1 = [1, 2, 3, "Dart", true];
  print(list[2]);
  list1[1] = "hello";
  print(list1);

  /*常用操作
  * length 长度
  * add(),insert() 添加元素
  * remove(),clear() 删除元素
  * indexof(), lastIndexOf() 获取索引
  * sort() 排序
  * sublist() 获取子list
  * shuffle() 打乱
  * asMap() 转换为Map
  * forEach() 遍历
  * */
  print(list1.length);
  list1.add("new");
  list1.insert(2, "new_2");

  list1.remove("new_2");
//  list1.clear();
}