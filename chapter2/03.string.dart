void main() {
  String str1 = "Hello";

  String multi_str = """
  hello mutiple string
  """;
  print(multi_str);

  //通过提供一个 r 前缀可以创建一个 “原始 raw” 字符串
  String str2 = r'Hello \n';
  print(str2);

  /*字符串操作
  *
  * 运算符： + * == []
  *
  * 插值表达式 ${expression}
  * */
  print(str1 + " dart");
  print(str1 * 2);
  print(str1 == str2);
  print(str1[2]);

  int a = 1, b = 2;
  print("a + b = ${a + b}");
  print("a is $a");

  //常用方法
  print(str1.isEmpty);
  print(str1.length);

//  contains()
  print(str1.contains("ll"));
  print(str1.substring(2)); //截取从索引位置向后截取

  print(str1.startsWith('h')); //是否以某字符串开头
  print(str1.endsWith("o")); //是否以某字符结尾

  print(str1.indexOf("l"));  //字符串为"l"出现在字符串中的第一位置
  print(str1.lastIndexOf('l')); //字符串为"l"出现在字符串中的最后位置

  print(str1.toLowerCase());
  print(str1.toUpperCase());
  
  print(str1.trim());
  print(str1.trimRight());
  print(str1.trimRight());
  
  print(str1.split("l"));
  print(str1.replaceAll("l", "2"));

}
