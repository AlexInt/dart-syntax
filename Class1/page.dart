/*静态成员
*使用static关键字来实现类级别的变量和函数
* 静态成员不能访问非静态成员，非静态成员可以访问静态成员
* 类中的常量需要使用static const声明
* */
class Page {
  static int currentPage = 1;

  static void scrollDown() {
    currentPage = 1;
    print("scroll down");
  }

  void scrollUp() {
    currentPage++;
    print("scrollUp...");
  }
  //call方法只需要名称是call，返回值类型好参数类型不做要求
  void call() {
    print("call");
  }
}