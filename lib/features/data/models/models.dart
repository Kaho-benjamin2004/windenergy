import 'package:windenergy/features/domain/entities/entities.dart';

class UtilisateurModel extends Utilisateur {

  const UtilisateurModel({
      super.authId,
      super.idUtilisateur,
      super.email,
      super.nom,
      super.prenom
  });

  factory UtilisateurModel.fromJSON(Map<String, Object> json) {
    final authId = json["authId"]! as String;
    final idUtilisateur = json["idUtilisateur"]! as int;
    final email = json["email"]! as String;
    final nom = json["nom"] as String;
    final prenom = json["prenom"] as String;

    return UtilisateurModel(
      authId: authId,
      idUtilisateur: idUtilisateur,
      email: email,
      nom: nom,
      prenom: prenom,
    );
  }

  
}

class EolienneModel extends Eolienne {}
