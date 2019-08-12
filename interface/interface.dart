/*接口
* 类和接口是统一的，类就是接口；
* 每个类都隐式的定义了一个包含所有实例成员的接口
* 如果是复用已有类的实现，使用继承(extends)
* 如果只是使用已有类的外在行为，使用接口(implements)
* */
void main() {
  var b = Fashion();
  b.brand();
}

abstract class Classic {
  void brand();
}

class Fashion implements Classic {
  @override
  void brand() {
    print("Popular");
  }
}