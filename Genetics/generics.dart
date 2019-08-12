void main() {
  var names1 = new List<String>();
  names1.add("only string");

  var names = <String>['Seth', 'Kathy', 'Lars'];
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  //在构造函数中使用泛型
  var nameSet = new Set<String>.from(names);

  // It's OK to use SomeBaseClass or any of its subclasses inside <>.
  var someBaseClassFoo = new Foo<SomeBaseClass>();
  var extenderFoo = new Foo<Extender>();

  // It's also OK to use no <> at all.
  var foo = new Foo();
}

abstract class Cache<T> {
  T getBykey(String key);
  setBykey(String key, T value);
}

//当使用泛型类型的时候，你 可能想限制泛型的具体类型。 使用 extends 可以实现这个功能：
class SomeBaseClass{}
// T must be SomeBaseClass or one of its descendants.
class Foo<T extends SomeBaseClass> {}

class Extender extends SomeBaseClass {}