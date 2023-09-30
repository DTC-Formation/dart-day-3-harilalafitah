import 'Adresse.dart';
import 'dart:io';

class Personne {
  String nom;
  String prenom;
  int age;
  String sex;
  int pointDeVie;
  int nbrAttak;
  Adresse adresse;

  Personne(this.nom, this.prenom, this.age, this.sex, this.pointDeVie,
      this.nbrAttak, this.adresse) {}

  void saluerF(Personne p) {
    if (this.sex == p.sex) {
      print('Hello ${p.prenom}!'); //F et F
    }
  }

  void saluerH(Personne p) {
    if (this.sex != p.sex) {
      print("Hello beauty!"); //M et F
    } else {
      print('Yo yo yo! ${p.prenom}'); //M et M
    }
  }

  void attak(Personne pa) {
    print('Enter the round count:');
    dynamic Round = stdin.readLineSync();
    int round = int.parse(Round); // Round count

    print('Enter the 1st hero: ');
    var Hero1 = stdin.readLineSync(); // 1st Hero

    print('Enter the 2nd hero: ');
    var Hero2 = stdin.readLineSync(); // 2nd Hero

    print('$Hero1 Hp is:${this.pointDeVie}.'); //1st hero Hp
    print('$Hero2 Hp is:${pa.pointDeVie}.'); //2nd hero Hp

    while (round > 0 && this.pointDeVie > 0 && pa.pointDeVie > 0) {
      if (this.nbrAttak == pa.nbrAttak) {
        print('$Hero1 attac $Hero2');
        this.nbrAttak--;
        pa.pointDeVie -= 25;
        print('$Hero2 Hp is now:${pa.pointDeVie}!');
      } else if (this.pointDeVie >= 0) {
        print('$Hero2 attac $Hero1');
        this.pointDeVie -= 25;
        pa.nbrAttak--;
        print('$Hero1 Hp is now:${this.pointDeVie}!');
      }
      round--;
    }
    if (this.pointDeVie > pa.pointDeVie) {
      print('$Hero1 is the winner!');
    } else if (this.pointDeVie == pa.pointDeVie) {
      print('Draw!');
    } else {
      print('$Hero2 is the winner!');
    }
  }
}
