import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class Authentifier {
  EolienneRepository repository;

  Authentifier({required this.repository});

  @override
  FutureResultat call(String email, String motDePasse) {
    return repository.authentifier(email, motDePasse);
  }
}

class Enregistrer{

  EolienneRepository repository;

  Enregistrer({required this.repository});

  @override
  FutureResultat call(String email,String nom,String prenom, String motDePasse) {
    return repository.enregistrer(email,nom,prenom, motDePasse);
  }
}
