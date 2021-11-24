library tp4;

Map<String, List<String>> userBadges = {
  'toto': ['test1', 'test2']
};

void main() {
  // TODO : créer une Map qui contient comme clé le nom des utilisateur et en valeur une list de String qui represente les badges de l'utilisateur

  // initialiser la Map avec des données de test

  // TODO 2 : Creer une fonction qui ajoute un badge à un utilisateur

  void addBadgeToUser(String username, String badgeId) {
    userBadges[username] = [
      ...userBadges[username] ?? [],
      ...[badgeId]
    ];
  }

  addBadgeToUser('jojo', 'aled');
  addBadgeToUser('toto', 'aled2');

  print(userBadges);

  // TODO 3 Créer une fonction qui supprime un badge à un utilisateur
  void removeIfExistsBadgeFromUser(String username, String badgeId) {
    userBadges[username]!.remove(badgeId);
  }

  removeIfExistsBadgeFromUser('toto', 'aled2');
  print(userBadges);

  // TODO 4 : Créer une fonction qui affiche les badges d'un utilisateur
  void displayUserBadges(String username) {
    print('badges for $username : ${userBadges[username]}');
  }

  displayUserBadges('toto');

  // TODO 5 : Utiliser les fonctions ci dessus pour ajouter/supprimer/afficher les badges des utilisateurs
}
