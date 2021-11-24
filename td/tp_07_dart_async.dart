import 'dart:async';

// TODO : Observer la difference
void main1() async {
  print('hello 1');
  await Future.delayed(Duration(milliseconds: 1000));
  print('hello 2');
}

void main2() {
  print('hello 1');
  Future.delayed(Duration(milliseconds: 1000));
  print('hello 2');
}

// ##################################################################################################

Future<String> retrieveUsername() {
  return Future.delayed(Duration(milliseconds: 3000))
      .then((val) => 'Jean dupon');
}

void main() {
  main1();
  main2();
  // TODO : Afficher afficher le nom d'utilisateur de deux maniere differentes
  // with await / without await
  main4();
}

// ##################################################################################################

class HttpResponse {
  int status;
  dynamic data;

  HttpResponse({this.data, required this.status});
}
// TODO Créer une class User(token, email, name)

Future<HttpResponse> retrieveServerSuccessResponse() {
  // TODO : retourner un fake User
  return Future.delayed(Duration(milliseconds: 1000))
      .then((val) => HttpResponse(status: 200, data: {}));
}

Future<HttpResponse> retrieveServerFailureResponse() {
  return Future.delayed(Duration(milliseconds: 1000))
      .then((val) => HttpResponse(status: 500));
}

void main4() async {
  // TODO : Experimenter les differents cas possibles tout en traitant la reponse retournée
  var res = await retrieveServerSuccessResponse();
  print(res.data);
}
