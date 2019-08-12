void main() {

}

//一个返回字符串 的同步方法
String lookUpVersionSync() => '1.0.0';

//如果使用 async 关键字，则该方法 返回一个 Future，并且 认为该函数是一个耗时的操作
Future<String> lookUpVersion() async => "1.0.0";

