import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class Authentifier {
  EolienneRepository repository;

  Authentifier({required this.repository});

  @override
  FutureResultat call(Map<String, String> params) {
    final email = params["email"]!;
    final motDePasse = params["motDePasse"]!;
    return repository.authentifier(email, motDePasse);
  }
}

class Enregistrer{

  EolienneRepository repository;

  Enregistrer({required this.repository});

  @override
  FutureResultat call(Map<String, String> params) {
    final email = params["email"]!;
    final nom = params["nom"]!;
    final prenom = params["prenom"]!;
    final motDePasse = params["motDePasse"]!;
    return repository.enregistrer(email,nom,prenom, motDePasse);
  }
}
