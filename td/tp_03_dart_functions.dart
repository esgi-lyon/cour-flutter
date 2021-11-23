void main() {
  
  // TODO : créer la fonction greeting qui retourne par exemple 'Bonjour, on est le 01/02/2019 il est 14h40'
  // TODO : Le deuxieme parametre est facultatif et prend une valeur true par defaut qui permet d'ajouter Bonjour au debut de la phrase
  
  DateTime currentDate = DateTime.now();
  String myGreetingResult = greeting(date: currentDate);
  print(myGreetingResult);

  bool sayHello = false;
  String myGreetingResult2 = greeting(date: currentDate, sayHello: sayHello);

}

void main2() {
  
  // TODO : modifier le fonction greeting afin d'avoir des parametres comme suit  
  DateTime currentDate = DateTime.now();
  String myGreetingResult = greeting(date : currentDate);

  bool sayHello = false;
  String myGreetingResult2 = greeting(date : currentDate, sayHello: sayHello);

}


void main3() {
  int theSecretNumber = 7;

  void ckeckTheElement(int element) {
    print(element == theSecretNumber ? 'YES THIS IS THE ONE ! $element' : 'IT\'S NOT $element GOOD LUCK NEXT TIME'); 
  }

  List<int> lotoList = [1, 2, 3, 49, 7, 39, 2];

  // TODO 1 : Parcourir la liste et executer ckeckTheElement pour chaque element de la list 
  // TODO 2 : Remplir la liste avec des nombres entiers aleatoire compris entre 0 et 10 (Créer une fonction generateRandomNumber)
  // TODO 3 : supprimer la fonction ckeckTheElement et utiliser une fonction anonyme a la place 

}

void main4() {

  aVoidFunction(int element) {
    print('this is simply a void function'); 
  }

  print(aVoidFunction(2));
  // TODO : Avant d'executer le programme, essayer de predir son resulat
}

String greeting({required DateTime date, sayHello = false}) {
  var res = sayHello ? 'Bonjour' : '';

  var dateHuman = '$date.year:$date.month:$date.day';
  return '$res on est le $dateHuman il est $date.hour';
}