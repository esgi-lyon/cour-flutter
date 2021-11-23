void main() {
  /// TODO : Corriger le programme suivant de tel façon a rendre le typage dynamique

  dynamic a = 1923;

  a = "HELLO";

  print(a);
}

void main2() {
  /// TODO : Créer trois variables, a,b et c, de type : entier, chaine de Caractère, boolean
  var a = 1;
  print(a);
  var b = "";
  print(b);
  var c = false;
  print(c);
}

void main3() {
  /// TODO : Corriger les erreurs et les warnings

  // String -> int
  var one = '1';
  assert(one == 1);
  print(one);

  // String -> double
  var onePointOne = double.parse("1.1");
  assert(onePointOne == 1.1);
  print(onePointOne);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
  print(oneAsString);

  // double -> String
  double piAsString = 3.14159;
  assert(piAsString == '3.14');
  print(piAsString);
}
