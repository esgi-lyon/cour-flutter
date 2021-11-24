

void main() {
  int myFinal = 20;
  int myConst = 40;
  
  myFinal = 3; 
  myConst = 6;

  print(myFinal);
  print(myConst);
  
}

void main2() {
  int a = 340;

  final int myConst = DateTime.now().millisecond;
  final int myConst2 = 120 + a;
  
  a = 49;
  assert(a == 49);
  assert(myConst2 == 460);

  print(a);
  print(myConst);
  print(myConst2);
  
}