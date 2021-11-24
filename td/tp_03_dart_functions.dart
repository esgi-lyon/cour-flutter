import 'dart:math';

void main() {
  // TODO : créer la fonction greeting qui retourne par exemple 'Bonjour, on est le 01/02/2019 il est 14h40'
  // TODO : Le deuxieme parametre est facultatif et prend une valeur true par defaut qui permet d'ajouter Bonjour au debut de la phrase

  var currentDate = DateTime.now();
  var myGreetingResult = greeting(date: currentDate);
  print(myGreetingResult);

  var sayHello = false;
  var myGreetingResult2 = greeting(date: currentDate, sayHello: sayHello);
  print(myGreetingResult2);

  main2();
  main3();
}

void main2() {
  // TODO : modifier le fonction greeting afin d'avoir des parametres comme suit
  var currentDate = DateTime.now();
  var myGreetingResult = greeting(date: currentDate);
  print(myGreetingResult);

  var sayHello = false;
  var myGreetingResult2 = greeting(date: currentDate, sayHello: sayHello);
  print(myGreetingResult2);
}

void main3() {
  var theSecretNumber = 7;

  // TODO 1 : Parcourir la liste et executer ckeckTheElement pour chaque element de la list
  var lotoList = <int>[1, 2, 3, 49, 7, 39, 2];
  lotoList.forEach((int element) {
    print(element == theSecretNumber
        ? 'YES THIS IS THE ONE ! $element'
        : 'IT\'S NOT $element GOOD LUCK NEXT TIME');
  });

  // TODO 2 : Remplir la liste avec des nombres entiers aleatoire compris entre 0 et 10 (Créer une fonction generateRandomNumber)
  var randomer = Random();

  lotoList.add(randomer.nextInt(100));

  // TODO 3 : supprimer la fonction ckeckTheElement et utiliser une fonction anonyme a la place
}

void main4() {
  String aVoidFunction(int element) {
    return 'this is simply a void function';
  }

  print(aVoidFunction(2));
  // TODO : Avant d'executer le programme, essayer de predir son resulat
}

String greeting({required DateTime date, sayHello = false}) {
  var res = sayHello ? 'Bonjour' : '';

  var dateHuman = '${date.year}:${date.month}:${date.day}';
  return '$res on est le $dateHuman il est ${date.hour}:${date.minute}';
}
