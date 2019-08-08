/*工厂构造方法
* 工厂构造方法类似于设计模式中的工厂模式
* 在构造方法前添加关键字factory实现一个工厂构造方法
* 在工厂构造方法中可返回对象
* */
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to the _ in front
  // of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}
