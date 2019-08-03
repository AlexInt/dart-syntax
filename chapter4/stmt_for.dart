void main() {
  var list = [1, 2, 3, 4];
  for (var idx = 0; idx < list.length; idx++) {
    print(idx);
  }

  for (var item in list) {
    print(item);
  }

  String lang = "Swift";
  switch (lang) {
    label:
    case "Dart":
      print("dart");
      break;
    case "Swift":
      print("swift");
      continue label;  //先找到执行的case语句后，然后执行continue后面的label的case语句。
    case "C":
      print("god");
      break;
    default:
      print("non");
      break;
  }
}
