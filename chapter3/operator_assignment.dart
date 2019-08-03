void main() {
  int a = 10;
  int b;

  b ??= 10;//如果b没有值，则将10赋值给b,如果b有值，则不赋值
  print(b);
}