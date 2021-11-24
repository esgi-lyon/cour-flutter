import 'dart:math';
import './tp_04_dart_list_map.dart' as tp4;

void main() {
  final speedLimit = 80;
  final currentSpeed = Random().nextInt(220) + 1;

  void evaluateSpeed() {
    // TODO afficher un message a l'utilisateur si sa vitesse depasse la limite autorisée
    if (currentSpeed > speedLimit) {
      print('Vitesse dépassé');
    }
  }

  evaluateSpeed();

  main2();
}

// ##################################################################################################

void main2() {
  // TODO : Reprendre l'exemple de userBadges du TP_04

  // TODO : developper une fonction qui cherche les utilisateur qui ont un badge qui commence par le motif passé en parametre

  List<String> retrieveUsersWithBadgeStartWith(String motif) {
    var res = <String>[];
    tp4.userBadges.forEach((key, value) {
      value.forEach((el) {
        el.contains(motif) && !res.contains(key) ? res.add(key) : null;
      });
    });

    return res;
  }

  print(retrieveUsersWithBadgeStartWith('te'));
}
