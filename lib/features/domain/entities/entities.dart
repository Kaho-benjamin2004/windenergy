import 'package:equatable/equatable.dart';

class Utilisateur extends Equatable {
  final String authId;
  final int idUtilisateur;
  final String email;
  final String nom;
  final String prenom;

  const Utilisateur({
    this.authId = "",
    this.idUtilisateur = 0 ,
    this.email = "",
    this.nom = "",
    this.prenom = ""
  });
  
  @override
  List<Object?> get props => [authId];
}
