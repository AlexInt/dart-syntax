import 'person.dart';

void main() {
  var person = new Person("Tom",20,"male");
  var p2 = new Person.withName("Bob");
  print(p2.name);
  person.age = 20;
  person.name = "Alex";
  person.work();

  var rect = Rectangle();
  rect.width = 20;
  rect.height = 10;
  print(rect.area);
  rect.area = 300;
  print(rect.width);

  const dog = Dog("shelby", 10, "male");

}

