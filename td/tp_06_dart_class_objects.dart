import 'dart:convert';
// TODO : Creer une class User (username, email, UserToken token)
// TODO : Creer une class UserToken (token, expireOn, createdAt)
// TODO : creer un constructeur fromJSON dans pour la class UserToken

class UserToken {
  String token;
  DateTime expireOn;
  DateTime createdAt;

  UserToken(this.token, this.expireOn, this.createdAt);

  @override
  String toString() {
    return '''{
\t\t"token": "$token",\n\t\t"expireOn": "$expireOn",\n\t\t"createdAt": "${createdAt.toString()}"
\t}''';
  }

  factory UserToken.fromJson(String data) {
    Map<String, dynamic> decoded = json.decode(data);

    return UserToken(decoded['token'] ?? '',
        DateTime.parse(decoded['expireOn'] ?? ''), DateTime.now());
  }
}

class User {
  String username;
  String email;
  UserToken token;
  User(this.username, this.email, this.token);

  @override
  String toString() {
    return '''{
\t"token": ${token.toString()},\n\t"email": "$email",\n\t"username": "$username"
}''';
  }
}

void main() {
  var utkn = UserToken.fromJson('''{
    "token": "am9qbwo=",
    "expireOn": "2022-02-27"
  }''');
  var u = User('jano', 'jano@jano.fr', utkn);

  print(u.toString());
}

// ##################################################################################################
