import 'Adresse.dart';
import 'Personne.dart';

void main() {
  var adr1 = Adresse("Ha", "Mada", "Tana", 101);
  var adr2 = Adresse("He", "Mada", "Tana", 101);
  var adr3 = Adresse("Hs", "Mada", "Tana", 101);
  var hero1 = Personne("Dragon", "Knight", 20, "Masculin", 25, 10, adr1);
  var hero2 = Personne("Ranger", "Windy", 19, "Feminin", 70, 20, adr2);
  var hero3 = Personne('Rikki', 'Spam', 50, 'Masculin', 70, 10, adr3);

  // P1.saluerH(P2);
  // P2.saluerF(P1);
  hero1.attak(hero3);
}
