import 'dart:async';

// TODO : Observer la difference
void main()  async{
  print('hello 1');
  await Future.delayed(Duration(milliseconds: 1000));
  print('hello 2');
}

void main() {
  print('hello 1');
  Future.delayed(Duration(milliseconds: 1000));
  print('hello 2');
}

// ################################################################################################## 

import 'dart:async';


Future<String> retrieveUsername(){
    return Future.delayed(Duration(milliseconds: 3000)).then((val) => 'Jean dupon');
}

void main() {
  // TODO : Afficher afficher le nom d'utilisateur de deux maniere differentes  
}

// ################################################################################################## 

import 'dart:async';

class HttpResponse{
  int status; 
  dynamic data;

  HttpResponse({this.data, this.status});
}
// TODO Créer une class User(token, email, name) 


Future<HttpResponse> retrieveServerSuccessResponse(){
  // TODO : retourner un fake User 
    return Future.delayed(Duration(milliseconds: 1000)).then((val) => HttpResponse(status: 200, data: {}));
}

Future<HttpResponse> retrieveServerFailureResponse(){
  // TODO : Completer avec le code qui va bien
}

void main() {
  // TODO : Experimenter les differents cas possibles tout en traitant la reponse retournée 
}